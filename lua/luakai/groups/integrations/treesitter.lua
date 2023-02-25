local M = {}

function M.get()
    if vim.treesitter.highlighter.hl_map then
        vim.notify(
            [[Luakai (info):
nvim-treesitter integration requires neovim 0.8
If you want to stay on nvim 0.7, either disable the integration or pin luakai tag to v0.2.4 and nvim-treesitter commit to 4cccb6f494eb255b32a290d37c35ca12584c74d0.
]],
            vim.log.levels.INFO
        )
        return {}
    end

    return {
        -- Reference: https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md

        -- Misc
        ["@comment"] = { link = "Comment" },
        ["@error"] = { link = "Error" },
        ["@preproc"] = { link = "PreProc" }, -- various preprocessor directives & shebangs
        ["@define"] = { link = "Define" }, -- preprocessor definition directives
        ["@operator"] = { link = "Operator" }, -- For any operator: +, but also -> and * in C.
        -- Punctuation
        ["@punctuation.delimiter"] = { fg = C.red }, -- For delimiters ie: .
        ["@punctuation.bracket"] = { fg = C.yellow }, -- For brackets and parenthesis.
        ["@punctuation.special"] = { fg = C.red , style = O.styles.operators or {} }, -- For special punctutation that does not fall in the catagories before.
        -- Literals
        ["@string"] = { link = "String" }, -- For strings.
        ["@string.regex"] = { fg = C.green, style = O.styles.strings or {} }, -- For regexes.
        ["@string.escape"] = { fg = C.green, style = O.styles.strings }, -- For escape characters within a string.
        ["@string.special"] = { fg = C.yellow }, -- other special strings (e.g. dates)
        ["@character"] = { link = "Character" }, -- character literals
        ["@character.special"] = { link = "SpecialChar" }, -- special characters (e.g. wildcards)
        ["@boolean"] = { link = "Boolean" }, -- For booleans.
        ["@number"] = { link = "Number" }, -- For all numbers
        ["@float"] = { link = "Number" }, -- For floats.
        -- Functions
        ["@function"] = { link = "Function" }, -- For function (calls and definitions).
        ["@function.builtin"] = { fg = C.green, style = O.styles.functions or {} }, -- For builtin functions: table.insert in Lua.
        ["@function.call"] = { link = "@function" }, -- function calls
        ["@function.macro"] = { fg = C.green, style = O.styles.functions or {} }, -- For macro defined functions (calls and definitions): each macro_rules in RusC.
        ["@method"] = { fg = C.green, style = O.styles.functions or {} }, -- For method calls and definitions.
        ["@method.call"] = { link = "@method" }, -- method calls
        ["@constructor"] = { fg = C.green }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.
        ["@parameter"] = { fg = C.fg, style = { "italic" } }, -- For parameters of a function.
        -- Keywords
        ["@keyword"] = { link = "Keyword" }, -- For keywords that don't fall in previous categories.
        ["@keyword.function"] = { fg = C.red, style = O.styles.keywords or {} }, -- For keywords used to define a function.
        ["@keyword.operator"] = { fg = C.red, style = O.styles.operators or {} }, -- For new keyword operator
        ["@keyword.return"] = { fg = C.red, style = O.styles.keywords or {} },
        -- JS & derivative
        ["@keyword.export"] = { fg = C.red, style = { "bold" } },
        ["@conditional"] = { link = "Conditional" }, -- For keywords related to conditionnals.
        ["@repeat"] = { link = "Repeat" }, -- For keywords related to loops.
        -- @debug            ; keywords related to debugging
        ["@label"] = { link = "Label" }, -- For labels: label: in C and :label: in Lua.
        ["@include"] = { link = "Include" }, -- For includes: #include in C, use or extern crate in Rust, or require in Lua.
        ["@exception"] = { fg = C.red, style = O.styles.keywords or {} }, -- For exception related keywords.
        -- Types

        ["@type"] = { link = "Type" }, -- For types.
        ["@type.builtin"] = { fg = C.blue, style = O.styles.properties or "italic" }, -- For builtin types.
        ["@type.definition"] = { link = "@type" }, -- type definitions (e.g. `typedef` in C)
        ["@type.qualifier"] = { link = "@type" }, -- type qualifiers (e.g. `const`)
        ["@storageclass"] = { link = "StorageClass" }, -- visibility/life-time/etc. modifiers (e.g. `static`)
        ["@attribute"] = { link = "Constant" }, -- attribute annotations (e.g. Python decorators)
        ["@field"] = { fg = C.orange }, -- For fields.
        ["@property"] = { fg = C.orange, style = O.styles.properties or {} }, -- Same as TSField.
        -- Identifiers

        ["@variable"] = { fg = C.fg, style = O.styles.variables or {} }, -- Any variable name that does not have another highlight.
        ["@variable.builtin"] = { fg = C.purple }, -- Variable names that are defined by the languages, like this or self.
        ["@constant"] = { fg = C.purple }, -- For constants
        ["@constant.builtin"] = { fg = C.purple, style = O.styles.keywords or {} }, -- For constant that are built in the language: nil in Lua.
        ["@constant.macro"] = { link = "Macro" }, -- For constants that are defined by macros: NULL in C.
        ["@namespace"] = { fg = C.blue, style = { "italic" } }, -- For identifiers referring to modules and namespaces.
        ["@symbol"] = { fg = C.fg },
        -- Text

        ["@text"] = { fg = C.green }, -- For strings considerated text in a markup language.
        ["@text.strong"] = { fg = C.bg0, bg = C.red, style = { "bold" } }, -- bold
        ["@text.emphasis"] = { style = { "italic" } }, -- italic
        ["@text.underline"] = { link = "Underline" }, -- underlined text
        ["@text.strike"] = { fg = C.gray, style = { "strikethrough" } }, -- strikethrough text
        ["@text.title"] = { link = "Title" }, -- titles like: # Example
        ["@text.literal"] = { link = "String" }, -- used for inline code in markdown and for doc in python (""")
        ["@text.uri"] = { fg = C.blue, style = { "italic", "underline" } }, -- urls, links and emails
        ["@text.math"] = { fg = C.yellow }, -- math environments (e.g. `$ ... $` in LaTeX)
        ["@text.environment"] = { link = "Macro"}, -- text environments of markup languages
        ["@text.environment.name"] = { link = "Type" }, -- text indicating the type of an environment
        ["@text.reference"] = { link = "Constant" }, -- references
        ["@text.todo"] = { link = "Todo" }, -- todo notes
        ["@text.todo.checked"] = { link = "Todo" }, -- todo notes
        ["@text.todo.unchecked"] = { link = "Todo" }, -- todo notes
        ["@text.note"] = { fg = C.bg0, bg = C.blue, style = {"bold"} },
        ["@text.warning"] = { fg = C.bg0, bg = C.yellow, style = {"bold"}},
        ["@text.danger"] = { fg = C.bg0, bg = C.red, style = {"bold"} },
        ["@text.diff.add"] = { link = "diffAdded" }, -- added text (for diff files)
        ["@text.diff.delete"] = { link = "diffRemoved" }, -- deleted text (for diff files)
        -- Tags
        ["@tag"] = { fg = C.purple }, -- Tags like html tag names.
        ["@tag.attribute"] = { fg = C.orange, style = { "italic" } }, -- Tags like html tag names.
        ["@tag.delimiter"] = { fg = C.yellow }, -- Tag delimiter like < > /
        -- Semantic tokens
        ["@class"] = { fg = C.blue },
        ["@struct"] = { fg = C.blue },
        ["@enum"] = { fg = C.purple },
        ["@enumMember"] = { fg = C.purple, style = {"italic"} },
        ["@event"] = { fg = C.event },
        ["@interface"] = { fg = C.blue },
        ["@modifier"] = { fg = C.red },
        ["@regexp"] = { fg = C.green },
        ["@typeParameter"] = { fg = C.orange },
        ["@decorator"] = { fg = C.purple },
        -- Language specific:

        -- css
        ["@property.css"] = { fg = C.lavender },
        ["@property.id.css"] = { fg = C.blue },
        ["@property.class.css"] = { fg = C.orange },
        ["@type.css"] = { fg = C.blue },
        ["@type.tag.css"] = { fg = C.orange },
        ["@string.plain.css"] = { fg = C.yellow },
        ["@number.css"] = { fg = C.purple },
        -- toml
        ["@property.toml"] = { fg = C.blue }, -- Differentiates between string and properties
        -- json
        ["@label.json"] = { fg = C.blue }, -- For labels: label: in C and :label: in Lua.
        -- lua
        ["@constructor.lua"] = { fg = C.green }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.
        -- typescript
        ["@constructor.typescript"] = { fg = C.green },
        -- TSX (Typescript React)
        ["@constructor.tsx"] = { fg = C.orange },
        ["@tag.attribute.tsx"] = { fg = C.orange, style = { "italic" } },
        -- cpp
        ["@property.cpp"] = { fg = C.orange },
        -- yaml
        ["@field.yaml"] = { fg = C.blue }, -- For fields.
        -- Ruby
        ["@symbol.ruby"] = { fg = C.orange },
        -- PHP
        ["@type.qualifier.php"] = { link = "Keyword" }, -- type qualifiers (e.g. `const`)
        ["@method.php"] = { link = "Function" },
        ["@method.call.php"] = { link = "Function" },
    }
end

return M
