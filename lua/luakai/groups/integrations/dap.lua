local M = {}

function M.get()
  return {
    -- nvim-dap
    DapBreakpoint = { fg = C.yellow },
    DapBreakpointCondition = { fg = C.yellow },
    DapLogPoint = { fg = C.yellow },
    DapStopped = { fg = C.green, bg = C.bg3, style = { "bold" } },

    -- nvim-dap-ui
    DAPUIScope = { fg = C.green, style = { "bold" } },
    DAPUIType = { link = "Type" },
    DAPUIValue = { fg = C.purple, style = { "italic" } },
    DAPUIVariable = { fg = C.fg },
    DapUIModifiedValue = { fg = C.yellow },
    DapUIDecoration = { fg = C.gray },
    DapUIThread = { fg = C.green },
    DapUIStoppedThread = { fg = C.green, style = { "bold" } },
    DapUISource = { fg = C.fg },
    DapUILineNumber = { fg = C.yellow },
    DapUIFloatBorder = { link = "FloatBorder" },
    DapUIWatchesEmpty = { fg = C.red },
    DapUIWatchesValue = { fg = C.green },
    DapUIWatchesError = { fg = C.red },
    DAPUiFrameName = { link = "Comment" },
    DapUICurrentFrameName = { link = "Normal" },
    DapUIBreakpointsPath = { fg = C.blue, style = { "bold" } },
    DapUIBreakpointsInfo = { fg = C.fg },
    DapUIBreakpointsCurrentLine = { fg = C.green, style = { "bold" } },
    DapUIBreakpointsDisabledLine = { fg = C.gray },
    DapUIStepOver = { fg = C.blue },
    DapUIStepInto = { fg = C.blue },
    DapUIStepBack = { fg = C.blue },
    DapUIStepOut = { fg = C.blue },
    DapUIStop = { fg = C.red },
    DapUIPlayPause = { fg = C.green },
    DapUIRestart = { fg = C.green },
    DapUIUnavailable = { fg = C.gray },
  }
end

return M
