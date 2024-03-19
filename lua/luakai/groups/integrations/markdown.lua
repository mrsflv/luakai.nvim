local M = {}

function M.get()
  return {
    markdownHeadingDelimiter = { fg = C.gray, style = { "bold" } },
    markdownHeadingRule = { fg = C.gray, style = { "bold" } },
    markdownCode = { fg = C.gray },
    markdownCodeBlock = { fg = C.gray },
    markdownLinkText = { fg = C.blue, style = { "underline" } },
    markdownH6 = { fg = C.red },
    markdownH5 = { fg = C.orange },
    markdownH4 = { fg = C.yellow },
    markdownH3 = { fg = C.green },
    markdownH2 = { fg = C.blue },
    markdownH1 = { fg = C.purple },
  }
end

return M
