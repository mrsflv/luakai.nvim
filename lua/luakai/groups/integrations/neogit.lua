local M = {}

function M.get()
  return {
    NeogitBranch = { fg = C.orange },
    NeogitRemote = { fg = C.green },
    NeogitUnmergedInto = {
      link = "Function",
    },
    NeogitUnpulledFrom = {
      link = "Function",
    },
    NeogitObjectId = {
      link = "Comment",
    },
    NeogitStash = {
      link = "Comment",
    },
    NeogitRebaseDone = {
      link = "Comment",
    },
    NeogitHunkHeader = {
      bg = U.darken(C.blue, 0.095, C.bg0),
      fg = U.darken(C.blue, 0.5, C.bg0),
    },
    NeogitHunkHeaderHighlight = {
      bg = U.darken(C.blue, 0.215, C.bg0),
      fg = C.blue,
    },
    NeogitDiffContextHighlight = {
      bg = U.darken(C.blue, 0.065, C.bg0),
      fg = C.text,
    },
    NeogitDiffDeleteHighlight = {
      bg = U.darken(C.red, 0.345, C.bg0),
      fg = U.lighten(C.red, 0.850, C.text),
    },
    NeogitDiffAddHighlight = {
      bg = U.darken(C.green, 0.345, C.bg0),
      fg = U.lighten(C.green, 0.850, C.text),
    },
    NeogitDiffDelete = {
      bg = U.darken(C.red, 0.095, C.bg0),
      fg = U.darken(C.red, 0.800, C.bg0),
    },
    NeogitDiffAdd = {
      bg = U.darken(C.green, 0.095, C.bg0),
      fg = U.darken(C.green, 0.800, C.bg0),
    },
    NeogitDiffAddCursor = {
      fg = U.darken(C.green, 0.800, C.bg0),
    },
    NeogitDiffAdditions = {
      fg = C.green,
    },
    NeogitCommitViewHeader = {
      bg = U.darken(C.blue, 0.300, C.bg0),
      fg = U.lighten(C.blue, 0.800, C.text),
    },
    NeogitChangeModified = {
      fg = C.blue,
      style = { "bold" },
    },
    NeogitChangeDeleted = {
      fg = C.red,
      style = { "bold" },
    },
    NeogitChangeAdded = {
      fg = C.green,
      style = { "bold" },
    },
    NeogitChangeRenamed = {
      fg = C.orange,
      style = { "bold" },
    },
    NeogitChangeUpdated = {
      fg = C.blue,
      style = { "bold" },
    },
    NeogitChangeCopied = {
      fg = C.orange,
      style = { "bold" },
    },
    NeogitChangeBothModified = {
      fg = C.yellow,
      style = { "bold" },
    },
    NeogitChangeNewFile = {
      fg = C.green,
      style = { "bold" },
    },
    NeogitUntrackedfiles = {
      fg = C.gray,
      style = { "bold" },
    },
    NeogitUnstagedchanges = {
      fg = C.red,
      style = { "bold" },
    },
    NeogitUnmergedchanges = {
      fg = C.red,
      style = { "bold" },
    },
    NeogitUnpulledchanges = {
      fg = C.red,
      style = { "bold" },
    },
    NeogitRecentcommits = {
      fg = C.red,
      style = { "bold" },
    },
    NeogitStagedchanges = {
      fg = C.green,
      style = { "bold" },
    },
    NeogitStashes = {
      fg = C.green,
      style = { "bold" },
    },
    NeogitRebasing = {
      fg = C.gray,
      style = { "bold" },
    },
    NeogitNotificationInfo = {
      fg = C.blue,
    },
    NeogitNotificationWarning = {
      fg = C.yellow,
    },
    NeogitNotificationError = {
      fg = C.red,
    },
    NeogitGraphRed = {
      fg = C.red,
    },
    NeogitGraphWhite = {
      fg = C.fg,
    },
    NeogitGraphYellow = {
      fg = C.yellow,
    },
    NeogitGraphGreen = {
      fg = C.green,
    },
    NeogitGraphCyan = {
      fg = C.blue,
    },
    NeogitGraphBlue = {
      fg = C.blue,
    },
    NeogitGraphPurple = {
      fg = C.lavender,
    },
    NeogitGraphGray = {
      fg = C.gray,
    },
    NeogitGraphOrange = {
      fg = C.orange,
    },
    NeogitGraphBoldRed = {
      fg = C.red,
      style = { "bold" },
    },
    NeogitGraphBoldWhite = {
      fg = C.white,
      style = { "bold" },
    },
    NeogitGraphBoldYellow = {
      fg = C.yellow,
      style = { "bold" },
    },
    NeogitGraphBoldGreen = {
      fg = C.green,
      style = { "bold" },
    },
    NeogitGraphBoldCyan = {
      fg = C.blue,
      style = { "bold" },
    },
    NeogitGraphBoldBlue = {
      fg = C.blue,
      style = { "bold" },
    },
    NeogitGraphBoldPurple = {
      fg = C.purple,
      style = { "bold" },
    },
    NeogitGraphBoldGray = {
      fg = C.bg2,
      style = { "bold" },
    },
    NeogitDiffContext = {
      bg = C.bg,
    },
    NeogitPopupBold = {
      style = { "bold" },
    },
    NeogitPopupSwitchKey = {
      fg = C.purple,
    },
    NeogitPopupOptionKey = {
      fg = C.purple,
    },
    NeogitPopupConfigKey = {
      fg = C.purple,
    },
    NeogitPopupActionKey = {
      fg = C.purple,
    },
    NeogitFilePath = {
      fg = C.blue,
      style = { "italic" },
    },
    NeogitDiffHeader = {
      bg = C.bg,
      fg = C.blue,
      style = { "bold" },
    },
    NeogitDiffHeaderHighlight = {
      bg = C.bg,
      fg = C.peach,
      style = { "bold" },
    },
    NeogitUnpushedTo = {
      fg = C.bg,

      style = { "bold" },
    },
    NeogitFold = {
      fg = C.none,
      bg = C.none,
    },
    NeogitSectionHeader = {
      fg = C.fg,
      style = { "bold" },
    },
    NeogitTagName = {
      fg = C.yellow,
    },
    NeogitTagDistance = {
      fg = C.blue,
    },
    NeogitWinSeparator = {
      link = "WinSeparator",
    },
  }
end

return M
