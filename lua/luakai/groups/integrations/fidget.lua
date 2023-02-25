local M = {}

function M.get()
    return {
        FidgetTask = {
            bg = O.transparent_background and C.none or C.bg0,
            fg = C.fg,
        },
        FidgetTitle = { fg = C.blue},
    }
end

return M
