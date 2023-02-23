local M = {}

function M.get_palette(flavour)
    local flvr = flavour or require("luakai").flavour or vim.g.luakai_flavour or "default"
    local _, palette = pcall(require, "luakai.palettes." .. flvr)
    local O = require("luakai").options
    return vim.tbl_deep_extend("keep", O.color_overrides.all or {}, O.color_overrides[flvr] or {}, palette or {})
end

return M
