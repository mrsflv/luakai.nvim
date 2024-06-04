local M = {}

local function get_dim_bg()
  if O.transparent_background and O.dim_inactive.enabled then
    return C.dim
  elseif O.dim_inactive.enabled then
    return C.dim
  elseif O.transparent_background then
    return C.none
  else
    return C.bg0
  end
end

function M.get()
  return {
    Normal = { fg = C.fg, bg = O.transparent_background and C.none or C.bg0 }, -- normal text
    NormalNC = {
      fg = C.fg,
      bg = get_dim_bg(),
    }, -- normal text in non-current windows
    NormalSB = { link = "NormalNC" }, -- normal text in non-current windows

    EndOfBuffer = { fg = O.show_end_of_buffer and C.bg4 or C.bg0 }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    Folded = { fg = C.gray, bg = O.transparent_background and C.none or C.bg1 }, -- line used for closed folds
    FoldColumn = { fg = C.gray_dim, bg = C.none }, -- 'foldcolumn'

    SignColumn = { fg = C.fg, bg = C.none }, -- column where |signs| are displayed
    SignColumnSB = { fg = C.fg, bg = C.none }, -- column where |signs| are displayed
    IncSearch = { bg = C.bg_red, fg = C.bg }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CursorColumn = { bg = C.bg1, fg = C.none }, -- Screen-column at the cursor, when 'cursorcolumn' is seC.
    ColorColumn = { fg = C.none, bg = C.bg1 }, -- used for the columns set with 'colorcolumn'
    Conceal = { fg = C.gray_dim, bg = C.none }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = { fg = C.fg, bg = C.bg0 }, -- character under the cursor

    iCursor = { link = "Cursor" }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    vCursor = { link = "Cursor" }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    lCursor = { link = "Cursor" }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM = { link = "Cursor" }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorLine = { bg = O.transparent_background and C.none or U.darken(C.bg1, 0.64, C.black) }, -- Screen-line at the cursor, when 'cursorline' is seC.  Low-priority if forecrust (ctermfg OR guifg) is not seC.

    LineNr = { fg = C.gray_dim, bg = C.none }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is seC.
    CursorLineNr = { fg = C.fg, bg = C.none }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line. highlights the number in numberline.

    VertSplit = {
      fg = O.transparent_background and C.bg4 or C.black,
      bg = O.transparent_background and C.bg_dim or C.none,
    }, -- the column separating vertically split windows

    Substitute = { fg = C.bg0, bg = C.yellow }, -- |:substitute| replacement text highlighting
    NonText = { fg = C.bg4, bg = C.none }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.

    NormalFloat = { fg = C.fg, bg = (O.transparent_background and vim.o.winblend == 0) and C.none or C.bg2 }, -- Normal text in floating windows.
    FloatBorder = { fg = C.gray, bg = (O.transparent_background and vim.o.winblend == 0) and C.none or C.bg2 },

    Question = { fg = C.yellow, bg = C.none }, -- |hit-enter| prompt and yes/no questions

    SpellBad = { sp = C.red, style = { "undercurl" } }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap = { sp = C.yellow, style = { "undercurl" } }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal = { sp = C.blue, style = { "undercurl" } }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare = { sp = C.green, style = { "undercurl" } }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.

    StatusLine = { fg = C.fg, bg = O.transparent_background and C.none or C.bg3 }, -- status line of current window
    StatusLineNC = { fg = C.gray, bg = O.transparent_background and C.none or C.bg1 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine = { fg = C.fg, bg = O.transparent_background and C.none or C.bg4 }, -- tab pages line, not active tab page label
    TabLineFill = { fg = C.gray, bg = O.transparent_background and C.none or C.bg1 }, -- tab pages line, where there are no labels
    TabLineSel = { fg = C.bg0, bg = C.bg_red }, -- tab pages line, active tab page label

    Pmenu = {
      fg = C.fg,
      bg = C.bg2,
    }, -- Popup menu: normal item.
    PmenuSbar = { fg = C.none, bg = C.bg2 }, -- Popup menu: scrollbar.
    PmenuSel = { fg = C.bg0, bg = C.bg_blue, style = { "bold" } }, -- Popup menu: selected item.
    PmenuThumb = { fg = C.gray, bg = C.bg2 }, -- Popup menu: Thumb of the scrollbar.

    QuickFixLine = { fg = C.blue, bg = C.none, style = { "bold" } }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.

    Search = { fg = C.bg0, bg = C.bg_green }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand ouC.
    CurSearch = { fg = C.bg0, bg = U.darken(C.bg_green, 0.70, C.bg0) }, -- 'cursearch' highlighting: highlights the current search you're on differently
    SpecialKey = { fg = C.bg4, bg = C.none }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' textspace. |hl-Whitespace|

    Directory = { fg = C.green, bg = C.none }, -- directory names (and other special names in listings)

    ErrorMsg = { fg = C.red, style = { "bold", "italic" } }, -- error messages on the command line
    MatchParen = { fg = C.none, bg = C.bg4, style = { "bold" } }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg = { fg = C.fg, style = { "bold" } }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea = { fg = C.fg }, -- Area for messages and cmdline, don't set this highlight because of https://github.com/neovim/neovim/issues/17832
    MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg = { fg = C.blue, style = { "bold" } }, -- |more-prompt|
    Title = { fg = C.red, style = { "bold" } }, -- titles for output from ":set all", ":autocmd" etC.
    Visual = { bg = C.bg3, style = { "bold" } }, -- Visual mode selection
    VisualNOS = { bg = C.bg3, style = { "bold", "underline" } }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg = { fg = C.fg, style = { "bold" } }, -- warning messages
    Whitespace = { fg = C.bg4 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu = { link = "PmenuSel" }, -- current match in 'wildmenu' completion
    WinBar = { fg = C.gray },
    WinBarNC = { fg = C.gray },
		WinSeparator = {fg = C.bg2 , bg = C.none }
  }
end

return M
