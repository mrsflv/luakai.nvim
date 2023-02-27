local M = {}

function M.get()
    return {
        TreesitterContext = {
            bg = O.transparent_background and C.none or C.bg2,
            fg = C.fg,
        },
        TreesitterContextLineNumber = {
            fg = C.yellow,
            bg = O.transparent_background and C.none or C.bg2
        },
    }
end

return M
