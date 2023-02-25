local M = {}

function M.get()
    return {
        TroubleText = { fg = C.fg },
        TroubleCount = { fg = C.gray},
        TroubleNormal = { fg = C.gray},
    }
end

return M
