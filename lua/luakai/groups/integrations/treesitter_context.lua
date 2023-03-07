local M = {}

function M.get()
    return {
        TreesitterContext = {
            bg = O.transparent_background and C.none or C.diff_blue,
            fg = C.fg,
        },
        TreesitterContextLineNumber = {
            fg = C.yellow,
            bg = O.transparent_background and C.none or C.diff_blue
        },
    }
end

return M
