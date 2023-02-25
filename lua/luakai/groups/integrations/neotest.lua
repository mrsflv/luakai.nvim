local M = {}

function M.get()
    return {
        NeotestPassed = { fg = C.green },
        NeotestFailed = { fg = C.red },
        NeotestRunning = { fg = C.yellow },
        NeotestSkipped = { fg = C.gray },
        NeotestTest = { fg = C.fg },
        NeotestNamespace = { fg = C.blue },
        NeotestFocused = { style = { "bold", "underline" } },
        NeotestFile = { fg = C.fg },
        NeotestDir = { fg = C.green },
        NeotestIndent = { fg = C.bg1 },
        NeotestExpandMarker = { fg = C.bg3 },
        NeotestAdapterName = { fg = C.orange },
        NeotestWinSelect = { fg = C.purple, style = { "bold" } },
        NeotestMarked = { fg = C.yellow, style = { "bold" } },
        NeotestTarget = { fg = C.orange },
        NeotestUnknown = { fg = C.fg },
    }
end

return M
