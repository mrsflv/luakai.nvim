local M = {}

function M.get()
    return {
        NotifyERRORBorder = { fg = C.red },
        NotifyERRORIcon = { fg = C.red },
        NotifyERRORTitle = { fg = C.red, style = { "italic" } },
        NotifyWARNBorder = { fg = C.yellow },
        NotifyWARNIcon = { fg = C.yellow },
        NotifyWARNTitle = { fg = C.yellow, style = { "italic" } },
        NotifyINFOBorder = { fg = C.green },
        NotifyINFOIcon = { fg = C.green },
        NotifyINFOTitle = { fg = C.green, style = { "italic" } },
        NotifyDEBUGBorder = { fg = C.purple },
        NotifyDEBUGIcon = { fg = C.purple },
        NotifyDEBUGTitle = { fg = C.purple, style = { "italic" } },
        NotifyTRACEBorder = { fg = C.blue },
        NotifyTRACEIcon = { fg = C.blue },
        NotifyTRACETitle = { fg = C.blue, style = { "italic" } },
    }
end

return M
