local M = {}

function M.get()
    return {
        LspNamespace = { fg = C.blue, style = { "italic" } },
        LspType = { fg = C.blue, style = O.styles.types or {} },
        LspClass = { fg = C.blue, style = O.styles.keywords or {} },
        -- LspEnum = {},
        -- LspInterface =
        LspStruct = { fg = C.blue },
        LspTypeParameter = { fg = C.blue, style = O.styles.types or {} }, -- For types.
        LspParameter = { fg = C.fg, style = { "italic" } }, -- For parameters of a function.
        LspVariable = { fg = C.fg, style = O.styles.variables or {} },
        LspProperty = { fg = C.orange, style = O.styles.properties or {} },
        -- LspEnumMember =
        -- LspEvent =
        LspFunction = { fg = C.green, style = O.styles.functions or {} },
        LspMethod = { fg = C.green, style = O.styles.functions or {} }, -- For method calls and definitions.
        LspMacro = { fg = C.green, style = O.styles.functions or {} },
        LspKeyword = { fg = C.red, style = O.styles.keywords or {} },
        -- LspModifier =
        LspComment = { fg = C.gray, style = O.styles.comments },
        LspString = { fg = C.yellow, style = O.styles.strings or {} },
        LspNumber = { fg = C.purple, style = O.styles.numbers or {} },
        -- LspRegexp =
        LspOperator = { fg = C.red, style = O.styles.operators or {} },
        -- LspDeclaration =
        -- LspDefinition =
        -- LspReadonly =
        -- LspStatic =
        LspDeprecated = { fg = C.bg2, style = { "strikethrough" } },
        -- LspAbstract =
        -- LspAsync =
        -- LspModification =
        -- LspDocumentation =
        -- LspDefaultLibrary =
    }
end

return M
