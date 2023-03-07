local M = {}

function M.get()
    return {
        TreesitterContext = {
            bg = O.transparent_background and C.none or C.bg3,
            fg = C.fg,
        },
        TreesitterContextLineNumber = {
            fg = C.gray,
            bg = O.transparent_background and C.none or C.bg3
        },
    }
end

return M
