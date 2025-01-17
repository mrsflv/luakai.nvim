local M = {}

function M.get()
  return {
    BlinkCmpLabel = { fg = C.fg },
    BlinkCmpLabelDetail = { link = "Comment" },
    BlinkCmpLabelDeprecated = { fg = C.gray, style = { "strikethrough" } },

    BlinkCmpLabelMatch = { bg = C.bg4, style = { "bold", "italic" } },
    BlinkCmpKindText = { fg = C.fg },
    BlinkCmpKindMethod = { fg = C.green },
    BlinkCmpKindFunction = { fg = C.green },
    BlinkCmpKindConstructor = { fg = C.green },
    BlinkCmpKindField = { fg = C.orange },
    BlinkCmpKindVariable = { fg = C.fg },
    BlinkCmpKindClass = { fg = C.blue },
    BlinkCmpKindInterface = { fg = C.blue },
    BlinkCmpKindModule = { fg = C.blue },
    BlinkCmpKindProperty = { fg = C.orange },
    BlinkCmpKindUnit = { fg = C.purple },
    BlinkCmpKindValue = { fg = C.purple },
    BlinkCmpKindEnum = { fg = C.purple },
    BlinkCmpKindKeyword = { fg = C.red },
    BlinkCmpKindSnippet = { fg = C.fg },
    BlinkCmpKindColor = { fg = C.yellow },
    BlinkCmpKindFile = { fg = C.yellow },
    BlinkCmpKindReference = { fg = C.yellow },
    BlinkCmpKindFolder = { fg = C.green },
    BlinkCmpKindEnumMember = { fg = C.purple },
    BlinkCmpKindConstant = { fg = C.purple },
    BlinkCmpKindStruct = { fg = C.blue },
    BlinkCmpKindEvent = { fg = C.blue },
    BlinkCmpKindOperator = { fg = C.green },
    BlinkCmpKindTypeParameter = { fg = C.fg, style = { "bold", "italic" } },
    BlinkCmpMenuSelector = { bg = C.none, style = { "bold", "italic" } },
    BlinkCmpMenuSelection = { bg = C.bg4 },
  }
end

return M
