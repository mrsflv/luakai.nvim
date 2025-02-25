local M = {}

function M.get()
  local transparent_background = require("luakai").options.transparent_background
  local bg_highlight = transparent_background and "NONE" or C.bg4

  local inactive_bg = transparent_background and "NONE" or C.bg1

  return {
    MiniCompletionActiveParameter = { style = { "underline" } },
    MiniCursorword = { style = { "underline" } },
    MiniCursorwordCurrent = { style = { "underline" } },
    MiniIndentscopeSymbol = { fg = C.fg },
    MiniIndentscopePrefix = { style = { "nocombine" } }, -- Make it invisible
    MiniJump = { link = "Search" },
    MiniJump2dSpot = { bg = C.bg, fg = C.purple, style = { "bold", "underline" } },
    MiniStarterCurrent = {},
    MiniStarterFooter = { fg = C.yellow, style = { "italic" } },
    MiniStarterHeader = { fg = C.purple },
    MiniStarterInactive = { link = "Comment" },
    MiniStarterItem = { fg = C.fg },
    MiniStarterItemBullet = { fg = C.purple },
    MiniStarterItemPrefix = { fg = C.orange },
    MiniStarterSection = { link = "Title" },
    MiniStarterQuery = { fg = C.green },
    MiniStatuslineDevinfo = { fg = C.fg, bg = C.bg3 },
    MiniStatuslineFileinfo = { fg = C.fg, bg = C.bg3 },
    MiniStatuslineFilename = { fg = C.fg, bg = C.bg1 },
    MiniStatuslineInactive = { fg = C.bg1, bg = C.bg3 },
    MiniStatuslineModeCommand = { fg = C.bg0, bg = C.yellow, style = { "bold" } },
    MiniStatuslineModeInsert = { fg = C.bg0, bg = C.bg_green, style = { "bold" } },
    MiniStatuslineModeNormal = { fg = C.bg0, bg = C.bg_blue, style = { "bold" } },
    MiniStatuslineModeOther = { fg = C.bg0, bg = C.purple, style = { "bold" } },
    MiniStatuslineModeReplace = { fg = C.bg0, bg = C.yellow, style = { "bold" } },
    MiniStatuslineModeVisual = { fg = C.bg0, bg = C.bg_red, style = { "bold" } },
    MiniSurround = { link = "IncSearch" },
    MiniTablineCurrent = { fg = C.green, bg = bg_highlight, style = { "italic" } },
    MiniTablineVisible = { fg = C.green, bg = inactive_bg },
    MiniTablineFill = { bg = C.bg_dim },
    MiniTablineHidden = { fg = C.fg, bg = inactive_bg },
    MiniTablineModifiedCurrent = { fg = C.green, bg = bg_highlight, style = { "italic" } },
    MiniTablineModifiedHidden = { fg = C.fg, bg = inactive_bg },
    MiniTablineModifiedVisible = { fg = C.fg, bg = inactive_bg },
    MiniTablineTabpagesection = { fg = C.bg0, bg = C.blue, style = { "bold" } },
    MiniTestEmphasis = { style = { "bold" } },
    MiniTestFail = { fg = C.red, style = { "bold" } },
    MiniTestPass = { fg = C.green, style = { "bold" } },
    MiniTrailspace = { fg = C.orange },

    MiniIconsAzure = { fg = U.lighten(C.blue, 0.8, C.bg) },
    MiniIconsBlue = { fg = C.blue },
    MiniIconsCyan = { fg = U.darken(C.blue, 0.2, C.bg) },
    MiniIconsGreen = { fg = C.green },
    MiniIconsGrey = { fg = C.gray },
    MiniIconsOrange = { fg = C.orange },
    MiniIconsPurple = { fg = C.purple },
    MiniIconsRed = { fg = C.red },
    MiniIconsYellow = { fg = C.yellow },
  }
end

return M
