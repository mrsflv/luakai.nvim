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
    TelescopePromptTitle = { fg = C.green },
    TelescopeResultsTitle = { fg = C.orange },
    TelescopePreviewTitle = { fg = C.orange },

    TelescopeResultsMethod = { link = "Function" },
    TelescopeResultsStruct = { link = "Structure" },

    TelescopePreviewLine = { bg = C.bg4 },
  }
end

return M
