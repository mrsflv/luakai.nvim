local M = {}

function M.get()
  return {
    SnacksNormal = { link = "NormalFloat" },
    SnacksWinBar = { link = "Title" },
    SnacksBackdrop = { fg = C.bg0 },
    SnacksNormalNC = { link = "NormalFloat" },
    SnacksWinBarNC = { link = "SnacksWinBar" },

    SnacksNotifierInfo = { fg = C.green },
    SnacksNotifierIconInfo = { fg = C.green },
    SnacksNotifierTitleInfo = { fg = C.green, style = { "italic" } },
    SnacksNotifierFooterInfo = { link = "DiagnosticInfo" },
    SnacksNotifierBorderInfo = { fg = C.gray },
    SnacksNotifierWarn = { fg = C.yellow },
    SnacksNotifierIconWarn = { fg = C.yellow },
    SnacksNotifierTitleWarn = { fg = C.yellow, style = { "italic" } },
    SnacksNotifierBorderWarn = { fg = C.yellow },
    SnacksNotifierFooterWarn = { link = "DiagnosticWarn" },
    SnacksNotifierDebug = { fg = C.orange },
    SnacksNotifierIconDebug = { fg = C.green },
    SnacksNotifierTitleDebug = { fg = C.green, style = { "italic" } },
    SnacksNotifierBorderDebug = { fg = C.green },
    SnacksNotifierFooterDebug = { link = "DiagnosticHint" },
    SnacksNotifierError = { fg = C.red },
    SnacksNotifierIconError = { fg = C.red },
    SnacksNotifierTitleError = { fg = C.red, style = { "italic" } },
    SnacksNotifierBorderError = { fg = C.red },
    SnacksNotifierFooterError = { link = "DiagnosticError" },
    SnacksNotifierTrace = { fg = C.green },
    SnacksNotifierIconTrace = { fg = C.green },
    SnacksNotifierTitleTrace = { fg = C.green, style = { "italic" } },
    SnacksNotifierBorderTrace = { fg = C.green },
    SnacksNotifierFooterTrace = { link = "DiagnosticHint" },

    SnacksDashboardNormal = { link = "Normal" },
    SnacksDashboardDesc = { fg = C.blue },
    SnacksDashboardFile = { fg = C.fg },
    SnacksDashboardDir = { link = "Directory" },
    SnacksDashboardFooter = { fg = C.yellow, style = { "italic" } },
    SnacksDashboardHeader = { fg = C.violet },
    SnacksDashboardIcon = { fg = C.yellow, bold = true },
    SnacksDashboardKey = { fg = C.fg },
    SnacksDashboardTerminal = { link = "SnacksDashboardNormal" },
    SnacksDashboardSpecial = { link = "Special" },
    SnacksDashboardTitle = { link = "Title" },

    SnacksPickerMatch = { fg = C.blue },
    SnacksPickerDir = { link = "Directory" },
    SnacksPickerTotals = { link = "Comment" },
    SnacksPickerBufFlags = { link = "Comment" },
    SnacksPickerKeymapRhs = { link = "Comment" },
    SnacksPickerPathHidden = { link = "Comment" },
    SnacksPickerUnselected = { link = "Comment" },
    SnacksPickerPathIgnored = { link = "Comment" },
    SnacksPickerGitStatusIgnored = { link = "Comment" },
    SnacksPickerGitStatusUntracked = { link = "Comment" },
		SnacksPickerSearch = {link = "Visual"},
  }
end

return M
