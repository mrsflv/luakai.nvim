local M = {}

function M.get()
    return {
        -- nvim-dap
        DapBreakpoint = { fg = C.yellow },
        DapBreakpointCondition = { fg = C.yellow },
        DapLogPoint = { fg = C.blue },
        DapStopped = { fg = C.orange },
        -- nvim-dap-ui
        DAPUIScope = { fg = C.blue },
        DAPUIType = { fg = C.blue },
        DAPUIValue = { fg = C.purple },
        DAPUIVariable = { fg = C.fg },
        DapUIModifiedValue = { fg = C.yellow },
        DapUIDecoration = { fg = C.blue },
        DapUIThread = { fg = C.green },
        DapUIStoppedThread = { fg = C.orange },
        DapUISource = { fg = C.purple },
        DapUILineNumber = { fg = C.blue },
        DapUIFloatBorder = { fg = C.blue },
        DapUIWatchesEmpty = { fg = C.red },
        DapUIWatchesValue = { fg = C.green },
        DapUIWatchesError = { fg = C.red },
        DapUIBreakpointsPath = { fg = C.blue },
        DapUIBreakpointsInfo = { fg = C.green },
        DapUIBreakpointsCurrentLine = { fg = C.green, style = { "bold" } },
        DapUIBreakpointsDisabledLine = { fg = C.gray },
        DapUIStepOver = { fg = C.green },
        DapUIStepInto = { fg = C.green },
        DapUIStepBack = { fg = C.green },
        DapUIStepOut = { fg = C.green },
        DapUIStop = { fg = C.red },
        DapUIPlayPause = { fg = C.yellow },
        DapUIRestart = { fg = C.green },
        DapUIUnavailable = { fg = C.gray },
    }
end

return M
