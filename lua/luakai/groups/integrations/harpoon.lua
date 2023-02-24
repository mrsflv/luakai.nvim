local M = {}

function M.get()
    return {
        HarpoonWindow = { fg = C.fg, bg = O.transparent_background and C.none or C.bg0 },
        HarpoonBorder = { fg = C.fg },
    }
end

return M
