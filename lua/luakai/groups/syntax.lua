local M = {}

function M.get()
  return {
    Comment = { fg = C.gray, bg = C.none, style = O.styles.comments }, -- just comments
    SpecialComment = { link = "Comment" }, -- special things inside a comment
    Constant = { fg = C.orange, bg = C.none }, -- (preferred) any constant
    String = { fg = C.yellow, bg = C.bg, style = O.styles.strings or {} }, -- a string constant: "this is a string"
    Character = { fg = C.yellow, bg = C.none }, --  a character constant: 'c', '\n'
    Number = { fg = C.purple, bg = C.none, style = O.styles.numbers or {} }, --   a number constant: 234, 0xff
    Float = { fg = C.purple, bg = C.none, style = O.styles.numbers or {} }, --    a floating point constant: 2.3e10
    Boolean = { fg = C.purple, bg = C.none, style = O.styles.booleans or {} }, --  a boolean constant: TRUE, false
    Identifier = { fg = C.orange, bg = C.none, style = O.styles.variables or {} }, -- (preferred) any variable name
    Function = { fg = C.green, bg = C.none, style = O.styles.functions or {} }, -- function name (also: methods for classes)
    Statement = { fg = C.red, bg = C.none }, -- (preferred) any statement
    Conditional = { fg = C.red, bg = C.none, style = O.styles.conditionals or {} }, --  if, then, else, endif, switch, etC.
    Repeat = { fg = C.red, bg = C.none, style = O.styles.loops or {} }, --   for, do, while, etC.
    Label = { fg = C.purple }, --    case, default, etC.
    Operator = { fg = C.red, bg = C.none, style = O.styles.operators or {} }, -- "sizeof", "+", "*", etC.
    Keyword = { fg = C.red, bg = C.none, style = O.styles.keywords or {} }, --  any other keyword
    -- Exception     = { }, --  try, catch, throw

    PreProc = { fg = C.red, bg = C.none }, -- (preferred) generic Preprocessor
    Include = { fg = C.red, bg = C.none, style = O.styles.keywords or {} }, --  preprocessor #include
    Define = { link = "PreProc" }, -- preprocessor #define
    Macro = { fg = C.purple, bg = C.none }, -- same as Define
    PreCondit = { link = "PreProc" }, -- preprocessor #if, #else, #endif, etc.
    StorageClass = { fg = C.red, bg = C.none }, -- static, register, volatile, etC.
    Structure = { link = "StorageClass" }, --  struct, union, enum, etC.
    Special = { fg = C.purple, bg = C.none }, -- (preferred) any special symbol
    Type = { fg = C.blue, bg = C.none, style = O.styles.types or {} }, -- (preferred) int, long, char, etC.
    Typedef = { fg = C.red, bg = C.none }, --  A typedef
    SpecialChar = { link = "Special" }, -- special character in a constant
    Tag = { fg = C.orange, bg = C.none }, -- you can use CTRL-] on this
    Delimiter = { fg = C.fg, bg = C.none }, -- character that needs attention
    -- Specialoverlay0= { }, -- special things inside a overlay0
    Debug = { fg = C.yellow, bg = C.none }, -- debugging statements
    Underlined = { style = { "underline" } }, -- (preferred) text that stands out, HTML links
    Bold = { style = { "bold" } },
    Italic = { style = { "italic" } },
    -- ("Ignore", below, may be invisible...)
    -- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error = { fg = C.red }, -- (preferred) any erroneous construct
    Todo = { fg = C.blue, bg = C.none, style = { "bold" } }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    qfLineNr = { fg = C.yellow },
    qfFileName = { fg = C.blue },
    htmlH1 = { fg = C.orange, style = { "bold" } },
    htmlH2 = { fg = C.blue, style = { "bold" } },
    -- mkdHeading = { fg = C.peach, style = { "bold" } },
    -- mkdCode = { bg = C.terminal_black, fg = C.text },
    mkdCodeDelimiter = { bg = C.bg0, fg = C.fg },
    mkdCodeStart = { fg = C.purple, style = { "bold" } },
    mkdCodeEnd = { fg = C.purple, style = { "bold" } },
    -- mkdLink = { fg = C.blue, style = { "underline" } },

    -- debugging
    debugPC = { fg = C.bg0, bg = O.transparent_background and C.none or C.green }, -- used for highlighting the current line in terminal-debug
    debugBreakpoint = { bg = C.red, fg = C.bg0 }, -- used for breakpoint colors in terminal-debug
    -- illuminate
    illuminatedWord = { fg = C.none, bg = C.none, style = { "italic" } },
    illuminatedCurWord = { fg = C.none, bg = C.none, style = { "italic", "bold" } },
    -- diff
    diffAdded = { fg = C.green, bg = C.none },
    diffRemoved = { fg = C.red, bg = C.none },
    diffChanged = { fg = C.blue, bg = C.none },
    diffOldFile = { fg = C.yellow, bg = C.none },
    diffNewFile = { fg = C.orange, bg = C.none },
    diffFile = { fg = C.purple, bg = C.none },
    diffLine = { fg = C.gray, bg = C.none },
    diffIndexLine = { fg = C.purple, bg = C.none },
    DiffAdd = { fg = C.none, bg = C.diff_green }, -- diff mode: Added line |diff.txt|
    DiffChange = { fg = C.none, bg = C.diff_blue }, -- diff mode: Changed line |diff.txt|
    DiffDelete = { fg = C.none, bg = C.diff_red }, -- diff mode: Deleted line |diff.txt|
    DiffText = { fg = C.bg0, bg = C.blue }, -- diff mode: Changed text within a changed line |diff.txt|

    -- NeoVim
    healthError = { fg = C.red },
    healthSuccess = { fg = C.green },
    healthWarning = { fg = C.yellow },
    -- misc

    -- glyphs
    GlyphPalette1 = { fg = C.red },
    GlyphPalette2 = { fg = C.green },
    GlyphPalette3 = { fg = C.blue },
    GlyphPalette4 = { fg = C.orange },
    GlyphPalette6 = { fg = C.purple },
    GlyphPalette7 = { fg = C.fg },
    GlyphPalette9 = { fg = C.yellow },
  }
end

return M
