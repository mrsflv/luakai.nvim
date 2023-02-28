local M = {}

function M.get()
    return {
        VimwikiLink = { fg = C.blue, bg = C.none, styke = {"underline"} },
        VimwikiHeaderChar = { fg = C.gray, bg = C.none },
        VimwikiHR = { fg = C.yellow, bg = C.none },
        VimwikiList = { fg = C.red, bg = C.none },
        VimwikiTag = { fg = C.blue, bg = C.none },
        VimwikiMarkers = { fg = C.gray, bg = C.none },
        VimwikiHeader1 = { fg = C.red, bg = C.none, style = { "bold" } },
        VimwikiHeader2 = { fg = C.orange, bg = C.none, style = { "bold" } },
        VimwikiHeader3 = { fg = C.yellow, bg = C.none, style = { "bold" } },
        VimwikiHeader4 = { fg = C.green, bg = C.none, style = { "bold" } },
        VimwikiHeader5 = { fg = C.blue, bg = C.none, style = { "bold" } },
        VimwikiHeader6 = { fg = C.purple, bg = C.none, style = { "bold" } },
    }
end

return M
