local M = {}

function M.get()
    local transparent_background = require("luakai").options.transparent_background
    local bg_highlight = transparent_background and "NONE" or C.bg2

    local inactive_bg = transparent_background and "NONE" or C.bg0

    return {
        MiniCompletionActiveParameter = { style = { "underline" } },
        MiniCursorword = { style = { "underline" } },
        MiniCursorwordCurrent = { style = { "underline" } },
        MiniIndentscopeSymbol = { fg = C.fg },
        MiniIndentscopePrefix = { style = { "nocombine" } }, -- Make it invisible
        MiniJump = {link = "Search"},
        MiniJump2dSpot = { bg = C.bg, fg = C.purple, style = { "bold", "underline" } },
        MiniStarterCurrent = {},
        MiniStarterFooter = { fg = C.yellow, style = { "italic" } },
        MiniStarterHeader = { fg = C.purple },
        MiniStarterInactive = {link = "Comment"},
        MiniStarterItem = { fg = C.fg },
        MiniStarterItemBullet = { fg = C.purple },
        MiniStarterItemPrefix = { fg = C.orange},
        MiniStarterSection = { link = "Title"},
        MiniStarterQuery = { fg = C.green },
        MiniStatuslineDevinfo = { fg = C.fg, bg = C.bg3 },
        MiniStatuslineFileinfo = { fg = C.fg, bg = C.bg3 },
        MiniStatuslineFilename = { fg = C.fg, bg = C.bg1 },
        MiniStatuslineInactive = { fg = C.bg1, bg = C.bg3 },
        MiniStatuslineModeCommand = { fg = C.bg0, bg = C.bg_yellow, style = { "bold" } },
        MiniStatuslineModeInsert = { fg = C.bg0, bg = C.bg_green, style = { "bold" } },
        MiniStatuslineModeNormal = { fg = C.bg0, bg = C.bg_blue, style = { "bold" } },
        MiniStatuslineModeOther = { fg = C.bg0, bg = C.bg_purple, style = { "bold" } },
        MiniStatuslineModeReplace = { fg = C.bg0, bg = C.bg_yellow, style = { "bold" } },
        MiniStatuslineModeVisual = { fg = C.bg0, bg = C.bg_red, style = { "bold" } },
        MiniSurround = { link = "IncSearch"},
        MiniTablineCurrent = { fg = C.fg, bg = C.bg0, sp = C.red, style = { "bold", "italic", "underline" } },
        MiniTablineFill = { bg = bg_highlight },
        MiniTablineHidden = { fg = C.fg, bg = inactive_bg },
        MiniTablineModifiedCurrent = { fg = C.blue, bg = C.none, style = { "bold", "italic" } },
        MiniTablineModifiedHidden = { fg = C.gray, bg = C.none },
        MiniTablineModifiedVisible = { fg = C.blue, bg = C.none },
        MiniTablineTabpagesection = { fg = C.bg0, bg = C.blue, style = {"bold"} },
        MiniTablineVisible = { bg = C.none },
        MiniTestEmphasis = { style = { "bold" } },
        MiniTestFail = { fg = C.red, style = { "bold" } },
        MiniTestPass = { fg = C.green, style = { "bold" } },
        MiniTrailspace = { bg = C.red },
    }
end

return M
