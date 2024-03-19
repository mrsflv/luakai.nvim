local M = {}

function M.get()
  return {
    NvimTreeFolderName = { fg = C.fg },
    NvimTreeFolderIcon = { fg = C.green },
    NvimTreeNormal = { fg = C.fg, bg = O.transparent_background and C.none or C.bg0 },
    NvimTreeOpenedFolderName = { fg = C.fg },
    NvimTreeEmptyFolderName = { fg = C.gray },
    NvimTreeIndentMarker = { fg = C.bg3 },
    NvimTreeWinSeparator = {
      fg = O.transparent_background and C.bg2 or C.bg0,
      bg = O.transparent_background and C.none or C.bg0,
    },
    NvimTreeRootFolder = { fg = C.red, style = { "bold" } },
    NvimTreeSymlink = { fg = C.yellow },
    NvimTreeStatuslineNc = { fg = C.bg3, bg = C.bg3 },
    NvimTreeGitDirty = { fg = C.orange },
    NvimTreeGitNew = { fg = C.green },
    NvimTreeGitDeleted = { fg = C.red },
    NvimTreeSpecialFile = { fg = C.purple },
    NvimTreeImageFile = { fg = C.fg },
    NvimTreeOpenedFile = { fg = C.fg },
  }
end

return M
