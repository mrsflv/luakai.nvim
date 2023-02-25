local M = {}

function M.get()
    return {
        TSRainbowRed = { fg = C.red },
        TSRainbowYellow = { fg = C.orange },
        TSRainbowBlue = { fg = C.yellow },
        TSRainbowOrange = { fg = C.green },
        TSRainbowGreen = { fg = C.blue },
        TSRainbowViolet = { fg = C.purple },
        TSRainbowCyan = { fg = C.fg },
    }
end

return M
