local is_vim = vim.fn.has "nvim" ~= 1
if is_vim then require "luakai.lib.vim" end

local M = {
    options = {
        default_variant = "base",
        compile_path = os.getenv("HOME") .. "/projects/luakai.nvim/cache/",
        transparent_background = false,
        show_end_of_buffer = false,
        term_colors = false,
        dim_inactive = {
            enabled = false,
            shade = "dark",
            percentage = 0.85,
        },
        no_italic = false,
        no_bold = false,
        styles = {
            comments = { "italic" },
            conditionals = { "italic" },
            loops = {},
            functions = { "bold" },
            keywords = {},
            strings = {},
            variables = {},
            numbers = {},
            booleans = {},
            properties = {},
            types = { "bold", "italic" },
            operators = {},
        },
        integrations = {
            cmp = true,
            dashboard = true,
            gitsigns = true,
            markdown = true,
            nvimtree = true,
            telescope = true,
            treesitter = not is_vim,
            ts_rainbow = true,
            ts_rainbow2 = true,
            barbecue = {
                dim_dirname = true,
            },
            indent_blankline = {
                enabled = true,
                colored_indent_levels = false,
            },
            native_lsp = {
                enabled = true,
                virtual_text = {
                    errors = { "italic" },
                    hints = { "italic" },
                    warnings = { "italic" },
                    information = { "italic" },
                },
                underlines = {
                    errors = { "underline" },
                    hints = { "underline" },
                    warnings = { "underline" },
                    information = { "underline" },
                },
            },
        },
        color_overrides = {},
        highlight_overrides = {},
    },
    variants = { atlantis = 1, andromeda = 2, shusia = 3, maia = 4, espresso = 5, base = 6 },
    -- variants = { base = 1 },
    path_sep = jit and (jit.os == "Windows" and "\\" or "/") or package.config:sub(1, 1),
}

function M.compile()
    local user_vrnt = M.variant
    for variant, _ in pairs(M.variants) do
        M.variant = variant
        require("luakai.lib." .. (is_vim and "vim." or "") .. "compiler").compile(variant)
    end
    M.variant = user_vrnt
    vim.notify("Luakai (info): compiled cache!", vim.log.levels.INFO)
end

-- XXX: Old implementation from Catppuccin
-- if default then -- when the colorscheme is called with an explicit parameter
--     variant = default
-- elseif vim.g.colors_name == "luakai" then -- after first time load (when it is compiled or when it is called via :colorscheme luakai)
--     -- it defaults to the chosen flavour for the specific background after the first time
--     variant = M.options.background[vim.o.background]
-- else
--     variant = M.variant -- first time load
-- end

local function get_variant(default)
    local variant

    if default then
        variant = default
    elseif M.variant then
        variant = M.variant
    else
        variant = M.options.default_variant
    end

    if variant and not M.variants[variant] then
        vim.notify(
            string.format(
                "Luakai (error): Invalid variant '%s', variant must be 'base', 'atlantis', 'andromeda', 'shusia', 'maia', or 'espresso'",
                variant
            ),
            vim.log.levels.ERROR
        )
        variant = nil
    end
    return variant or M.options.default_variant
end

local lock = false -- Avoid g:colors_name reloading

function M.load(variant)
    if lock then return end
    M.variant = get_variant(variant)
    local compiled_path = M.options.compile_path .. M.path_sep .. M.variant
    lock = true
    local f = loadfile(compiled_path)
    if not f then
        M.compile()
        f = loadfile(compiled_path)
    end
    ---@diagnostic disable-next-line: need-check-nil
    f()
    lock = false
end

function M.setup(user_conf)
    -- Parsing user config
    user_conf = user_conf or {}
    M.options = vim.tbl_deep_extend("keep", user_conf, M.options)
    M.options.highlight_overrides.all = user_conf.custom_highlights or M.options.highlight_overrides.all
    M.variant = get_variant(M.options.variant or vim.g.luakai_variant)

    -- Get cached hash
    local cached_path = M.options.compile_path .. M.path_sep .. "cached"
    local file = io.open(cached_path)
    local cached = nil
    if file then
        cached = file:read()
        file:close()
    end

    -- Get current hash
    local git_path = debug.getinfo(1).source:sub(2, -24) .. ".git" .. M.path_sep .. "ORIG_HEAD"
    local git = vim.fn.getftime(git_path) -- 2x faster vim.loop.fs_stat
    local hash = require("luakai.lib.hashing").hash(user_conf)
        .. (git == -1 and git_path or git) -- no .git in /nix/store -> cache path
        .. (vim.o.winblend == 0 and 1 or 0) -- :h winblend
        .. (vim.o.pumblend == 0 and 1 or 0) -- :h pumblend

    -- Recompile if hash changed
    if cached ~= hash then
        M.compile()
        file = io.open(cached_path, "wb")
        if file then
            file:write(hash)
            file:close()
        end
    end
end

if is_vim then return M end

vim.api.nvim_create_user_command(
    "Luakai",
    function(inp) vim.api.nvim_command("colorscheme luakai-" .. get_variant(inp.args)) end,
    {
        nargs = 1,
        complete = function(line)
            return vim.tbl_filter(function(val) return vim.startswith(val, line) end, vim.tbl_keys(M.variants))
        end,
    }
)

vim.api.nvim_create_user_command("LuakaiCompile", function()
    for name, _ in pairs(package.loaded) do
        if name:match "^luakai" and name ~= "luakai" then package.loaded[name] = nil end
    end
    M.compile()
    vim.api.nvim_command("colorscheme luakai")
end, {})

return M
