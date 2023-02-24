local M = {}

local function get_integrations()
    local integrations = O["integrations"]
    local final_integrations = {}

    for integration in pairs(integrations) do
        local cot = false
        if type(integrations[integration]) == "table" then
            if integrations[integration]["enabled"] == true then cot = true end
        else
            if integrations[integration] == true then cot = true end
        end

        if cot then
            final_integrations = vim.tbl_deep_extend(
                "force",
                final_integrations,
                require("luakai.groups.integrations." .. integration).get()
            )
        end
    end

    return final_integrations
end

function M.apply(variant)
    variant = variant or require("luakai").variant
    -- Borrowing global var
    _G._O = O
    _G._C = C
    _G._U = U

    _G.O = require("luakai").options
    _G.C = require("luakai.palettes").get_palette(variant)
    _G.U = require "luakai.utils.colors"

    C.none = "NONE"

    -- WARN: Not really clear at the moment what it does this block
    local dim_percentage = O.dim_inactive.percentage
    C.dim = O.dim_inactive.shade == "dark"
        and U.vary_color(
            { base = U.darken(C.bg0, dim_percentage, C.bg4) },
            U.darken(C.bg0, dim_percentage, C.bg4)
        )
        or U.vary_color(
            { base = U.lighten("#FBFCFD", dim_percentage, C.bg) },
            U.lighten(C.bg0, dim_percentage, C.bg0)
        )

    local theme = {}
    theme.syntax = require("luakai.groups.syntax").get()
    theme.editor = require("luakai.groups.editor").get()
    theme.integrations = get_integrations() -- plugins
    theme.terminal = require("luakai.groups.terminal").get() -- terminal colors
    local user_highlights = require("luakai").options.highlight_overrides
    if type(user_highlights[variant]) == "function" then user_highlights[variant] = user_highlights[variant](C) end
    theme.custom_highlights = vim.tbl_deep_extend(
        "keep",
        user_highlights[variant] or {},
        type(user_highlights.all) == "function" and user_highlights.all(C) or user_highlights.all or {}
    )

    -- Returning global var
    _G.O = _G._O
    _G.C = _G._C
    _G.U = _G._U

    return theme
end

return M
