local M = {}

function M.get()
  return {
    BlinkCmpLabel = { fg = C.overlay2 },
    BlinkCmpLabelDeprecated = { fg = C.gray, style = { "strikethrough" } },

    BlinkCmpLabelMatch = { fg = C.green, style = { "bold" } },
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
    BlinkCmpKindTypeParameter = { fg = C.fg, style = { "bold" } },
  }
end

return M