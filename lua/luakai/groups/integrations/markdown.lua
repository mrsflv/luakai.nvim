local M = {}

function M.get()
    return {
        markdownHeadingDelimiter = { fg = C.gray, style = { "bold" } },
        markdownCode = { fg = C.green},
        markdownCodeBlock = { fg = C.green },
        markdownLinkText = { fg = C.blue, style = { "underline" } },
        markdownH1 = { fg = C.red },
        markdownH2 = { fg = C.orange },
        markdownH3 = { fg = C.yellow },
        markdownH4 = { fg = C.green },
        markdownH5 = { fg = C.blue },
        markdownH6 = { fg = C.purple },
    }
end

return M
