local M = {}

function M.get()
  return {
    TelescopeBorder = { fg = C.fg },
    TelescopeSelectionCaret = { fg = C.fg },
    TelescopeSelection = {
      fg = O.transparent_background and C.gray or C.fg,
      bg = O.transparent_background and C.none or C.bg0,
      style = { "bold" },
    },
    TelescopeMatching = { fg = C.blue },
    -- TelescopePromptPrefix = { bg = C.crust },
    -- TelescopePromptNormal = { bg = C.crust },
    -- TelescopeResultsNormal = { bg = C.mantle },
    -- TelescopePreviewNormal = { bg = C.crust },
    -- TelescopePromptBorder = { bg = C.crust, fg = C.crust },
    -- TelescopeResultsBorder = { bg = C.mantle, fg = C.crust },
    -- TelescopePreviewBorder = { bg = C.crust, fg = C.crust },
    TelescopePromptTitle = { fg = C.bg0, bg = C.bg_green },
    TelescopeResultsTitle = { fg = C.bg0, bg = C.orange },
    TelescopePreviewTitle = { fg = C.bg0, bg = C.orange },
  }
end

return M
