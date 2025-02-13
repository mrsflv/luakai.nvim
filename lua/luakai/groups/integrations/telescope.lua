local M = {}

function M.get()
  return {
    TelescopeNormal = { link = "NormalFloat" },
    TelescopeBorder = { link = "FloatBorder" },
    TelescopeSelectionCaret = { fg = C.fg },
    TelescopeSelection = {
      fg = O.transparent_background and C.gray or C.fg,
      bg = O.transparent_background and C.none or C.bg4,
      style = { "bold" },
    },
    TelescopeMatching = { fg = C.blue },
    TelescopePromptTitle = { fg = C.bg0, bg = C.bg_green },
    TelescopeResultsTitle = { fg = C.bg0, bg = C.orange },
    TelescopePreviewTitle = { fg = C.bg0, bg = C.orange },

    TelescopeResultsMethod = { link = "Function" },
    TelescopeResultsStruct = { link = "Structure" },
  }
end

return M
