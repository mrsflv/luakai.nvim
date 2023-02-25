local M = {}

function M.get()
    local bg = O.transparent_background and C.none or C.bg
    return {
        HopNextKey = { bg = bg, fg = C.blue, style = { "bold", "underline" } },
        HopNextKey1 = { bg = bg, fg = C.orange, style = { "bold" } },
        HopNextKey2 = { bg = bg, fg = C.green, style = { "bold", "italic" } },
        HopUnmatched = { bg = bg, fg = C.gray },
    }
end

return M
