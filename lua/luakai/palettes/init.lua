local M = {}

function M.get_palette(variant)
  local vrnt = variant or require("luakai").variant or vim.g.luakai_variant or "base"
  local _, palette = pcall(require, "luakai.palettes." .. vrnt)
  local O = require("luakai").options
  return vim.tbl_deep_extend("keep", O.color_overrides.all or {}, O.color_overrides[vrnt] or {}, palette or {})
end

return M
