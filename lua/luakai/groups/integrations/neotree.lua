local M = {}

function M.get()
    local active_bg = O.transparent_background and C.none or C.bg0
    local inactive_bg = O.transparent_background and C.none or C.gray_dim
    return {
        NeoTreeDirectoryName = { fg = C.fg },
        NeoTreeDirectoryIcon = { fg = C.green },
        NeoTreeNormal = { fg = C.fg, bg = active_bg },
        NeoTreeExpander = { fg = C.bg1 },
        NeoTreeIndentMarker = { fg = C.bg1 },
        NeoTreeRootName = { fg = C.gray, style = { "bold" } },
        NeoTreeSymbolicLinkTarget = { fg = C.yellow },
        NeoTreeGitAdded = { fg = C.fg },
        NeoTreeGitConflict = { fg = C.yellow },
        NeoTreeGitDeleted = { fg = C.red },
        NeoTreeGitIgnored = { link = "NeoTreeDotfile"},
        NeoTreeGitModified = { fg = C.blue },
        NeoTreeGitUnstaged = { fg = C.purple },
        NeoTreeGitUntracked = { fg = C.orange },
        NeoTreeGitStaged = { fg = C.purple },
        NeoTreeFloatBorder = { fg = C.fg },
        NeoTreeFloatTitle = { fg = C.fg },
        NeoTreeFileNameOpened = { fg = C.fg },
        NeoTreeDimText = { fg = C.fg },
        NeoTreeFilterTerm = { fg = C.green, style = { "bold" } },
        NeoTreeTabActive = { bg = active_bg, fg = C.fg, style = { "bold" } },
        NeoTreeTabInactive = { bg = inactive_bg, fg = C.fg },
        NeoTreeTabSeparatorActive = { fg = active_bg, bg = active_bg },
        NeoTreeTabSeparatorInactive = { fg = inactive_bg, bg = inactive_bg },
        NeoTreeVertSplit = { fg = C.base, bg = inactive_bg },
        NeoTreeStatusLineNC = { fg = C.fg, bg = C.bg0 },
    }
end

return M
