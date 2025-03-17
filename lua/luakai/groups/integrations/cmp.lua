local M = {}

function M.get()
  return {
    CmpItemAbbr = { fg = C.fg },
    CmpItemAbbrDeprecated = { fg = C.gray, style = { "strikethrough" } },
    CmpItemKind = { fg = C.blue },
    CmpItemMenu = { fg = C.fg },
    CmpItemAbbrMatch = { fg = C.fg, bg = C.bg4, style = { "bold", "italic" } },
    CmpItemAbbrMatchFuzzy = { fg = C.fg, bg = C.bg4, style = { "bold", "italic" } },

    -- kind support
    CmpItemKindSnippet = { fg = C.yellow },
    CmpItemKindKeyword = { fg = C.red },
    CmpItemKindText = { fg = C.fg },
    CmpItemKindMethod = { fg = C.green },
    CmpItemKindConstructor = { fg = C.green },
    CmpItemKindFunction = { fg = C.green },
    CmpItemKindFolder = { link = "Directory" },
    CmpItemKindModule = { fg = C.blue },
    CmpItemKindConstant = { fg = C.purple },
    CmpItemKindField = { fg = C.orange },
    CmpItemKindProperty = { fg = C.orange },
    CmpItemKindEnum = { fg = C.purple },
    CmpItemKindUnit = { fg = C.purple },
    CmpItemKindClass = { fg = C.blue },
    CmpItemKindVariable = { fg = C.fg },
    CmpItemKindFile = { fg = C.yellow },
    CmpItemKindInterface = { fg = C.blue },
    CmpItemKindColor = { fg = C.yellow },
    CmpItemKindReference = { fg = C.yellow },
    CmpItemKindEnumMember = { fg = C.purple },
    CmpItemKindStruct = { fg = C.blue },
    CmpItemKindValue = { fg = C.purple },
    CmpItemKindEvent = { fg = C.red },
    CmpItemKindOperator = { fg = C.green },
    CmpItemKindTypeParameter = { fg = C.fg },
    CmpItemKindCopilot = { fg = C.yellow },
  }
end

return M
