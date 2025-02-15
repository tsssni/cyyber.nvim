local lush = require('lush')
local hsl = lush.hsl

local front = '#f5c1e9'
local back = '#120b10'

local black = '#333333'
local light_black = '#777777'

local red = '#ff0055'
local light_red = '#ff6699'

local green = '#61a702'
local light_green = '#bef743'

local yellow = '#fccb2e'
local light_yellow = '#ffff40'

local blue = '#4685ea'
local light_blue = '#85b4ff'

local magenta = '#8b4efc'
local light_magenta = '#a8a8ff'

local cyan = '#00ffc8'
local light_cyan = '#7ff5f5'

local white = '#aaaabb'
local light_white = '#f8f8ff'

vim.g.terminal_color_0  = black
vim.g.terminal_color_8  = light_black

vim.g.terminal_color_1  = red
vim.g.terminal_color_9  = light_red

vim.g.terminal_color_2  = green
vim.g.terminal_color_10 = light_green

vim.g.terminal_color_3  = yellow
vim.g.terminal_color_11 = light_yellow

vim.g.terminal_color_4  = blue
vim.g.terminal_color_12 = light_blue

vim.g.terminal_color_5  = magenta
vim.g.terminal_color_13 = light_magenta

vim.g.terminal_color_6  = cyan
vim.g.terminal_color_14 = light_cyan

vim.g.terminal_color_7  = white
vim.g.terminal_color_15 = light_white


-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    ColorColumn    { fg = light_white, bg = red }, -- Columns set with 'colorcolumn'
    Conceal        { fg = light_black }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor         { fg = blue }, -- Character under the cursor
    CurSearch      { fg = black, bg = light_magenta }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    lCursor        { fg = white }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM       { fg = white }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn   { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine     { }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory      { fg = red }, -- Directory names (and other special names in listings)
    DiffAdd        { fg = light_green }, -- Diff mode: Added line |diff.txt|
    DiffChange     { fg = light_yellow }, -- Diff mode: Changed line |diff.txt|
    DiffDelete     { fg = red }, -- Diff mode: Deleted line |diff.txt|
    DiffText       { fg = light_blue }, -- Diff mode: Changed text within a changed line |diff.txt|
    GitSignsAdd        { fg = light_green }, -- Diff mode: Added line |diff.txt|
    GitSignsChange     { fg = light_yellow }, -- Diff mode: Changed line |diff.txt|
    GitSignsDelete     { fg = red }, -- Diff mode: Deleted line |diff.txt|
    EndOfBuffer    { fg = blue }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    TermCursor     { fg = black, bg = light_black }, -- Cursor in a focused terminal
    TermCursorNC   { fg = light_black }, -- Cursor in an unfocused terminal
    ErrorMsg       { fg = light_white, bg = red }, -- Error messages on the command line
    VertSplit      { fg = black }, -- Column separating vertically split windows
    Folded         { fg = light_white, bg = light_red }, -- Line used for closed folds
    FoldColumn     { fg = light_white, bg = light_red }, -- 'foldcolumn'
    SignColumn     { fg = red, bg = back }, -- Column where |signs| are displayed
    IncSearch      { fg = black, bg = light_magenta }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute     { fg = black, bg = light_magenta }, -- |:substitute| replacement text highlighting
    LineNr         { fg = magenta }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    -- LineNrAbove    { }, -- Line number for when the 'relativenumber' option is set, above the cursor line
    -- LineNrBelow    { }, -- Line number for when the 'relativenumber' option is set, below the cursor line
    CursorLineNr   { fg = light_magenta }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
    -- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
    MatchParen     { fg = yellow }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg        { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea        { }, -- Area for messages and cmdline
    -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg        { }, -- |more-prompt|
    NonText        { fg = black }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal         { fg = front, bg = back }, -- Normal text
    NormalFloat    { fg = front, bg = back }, -- Normal text in floating windows.
    -- FloatBorder    { }, -- Border of floating windows.
    -- FloatTitle     { }, -- Title of floating windows.
    -- NormalNC       { }, -- normal text in non-current windows
    -- point
    Pmenu          { fg = light_red, bg = back }, -- Popup menu: Normal item.
    PmenuSel       { fg = light_white, bg = red }, -- Popup menu: Selected item.
    -- PmenuKind      { }, -- Popup menu: Normal item "kind"
    -- PmenuKindSel   { }, -- Popup menu: Selected item "kind" 
    -- PmenuExtra     { }, -- Popup menu: Normal item "extra text" 
    -- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text" 
    PmenuSbar      { fg = light_black, bg = black }, -- Popup menu: Scrollbar.
    PmenuThumb     { fg = light_white, bg = red }, -- Popup menu: Thumb of the scrollbar. l
    Question       { fg = green }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine   { fg = black, bg = light_magenta }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search         { fg = black, bg = light_magenta }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    SpecialKey     { fg = cyan }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad       { fg = white, sp = red, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap       { fg = white, sp = blue, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal     { fg = white, sp = cyan, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare      { fg = white, sp = magenta, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine     { fg = light_white, bg = back }, -- Status line of current window
    StatusLineNC   { fg = white, bg = back }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine        { }, -- Tab pages line, not active tab page label
    -- TabLineFill    { }, -- Tab pages line, where there are no labels
    -- TabLineSel     { }, -- Tab pages line, active tab page label
    Title          { fg = red }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual         { fg = light_white, bg = red }, -- Visual mode selection
    VisualNOS      { fg = light_black }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg     { fg = red }, -- Warning messages
    Whitespace     { fg = black }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    Winseparator   { fg = black }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    WildMenu       { fg = red }, -- Current match in 'wildmenu' completion
    WinBar         { fg = light_black }, -- Window bar of current window
    WinBarNC       { fg = light_black }, -- Window bar of not-current windows
    DashboardHeader { fg = red },
    DashboardFooter { fg = black },
    DashboardProjectTitle { fg = cyan },
    DashboardMruTitle { fg = cyan },
    DashboardShortCut { fg = cyan },
    Lualine {},
    LualineMode { fg = cyan },
    LualineRuler { fg = light_cyan },
    LualineLsp { fg = light_green },
    LualineScope { fg = blue },
    LualineBranch { fg = light_magenta },
    InclineNormal {},
    InclineNormalNC {},

    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment        { fg = light_black }, -- Any comment

    Constant       { fg = light_green }, -- (*) Any constant
    String         { fg = green }, --   A string constant: "this is a string"
    Character      { fg = green }, --   A character constant: 'c', '\n'
    -- Number         { }, --   A number constant: 234, 0xff
    -- Boolean        { }, --   A boolean constant: TRUE, false
    -- Float          { }, --   A floating point constant: 2.3e10

    Identifier     { fg = yellow }, -- (*) Any variable name
    Function       { fg = light_yellow }, --   Function name (also: methods for classes)

    Statement      { fg = light_cyan }, -- (*) Any statement
    -- Conditional    { }, --   if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    -- Operator       { }, --   "sizeof", "+", "*", etc.
    -- Keyword        { }, --   any other keyword
    -- Exception      { }, --   try, catch, throw

    PreProc        { fg = light_magenta }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type           { fg = red }, -- (*) int, long, char, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    Special        { fg = blue }, -- (*) Any special symbol
    -- SpecialChar    { }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    -- Delimiter      { }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    Underlined     { gui = 'underline', fg = magenta }, -- Text that stands out, HTML links
    Ignore         { fg = light_black }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error          { fg = light_white, bg = red }, -- Any erroneous construct
    Todo           { fg = black, bg = light_yellow }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            { fg = red } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg = yellow } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = blue } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg = cyan } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticOk               { fg = light_green } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
    -- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

    Headline                   { fg = red, bold = true } ,
    Headline1                  { fg = red, bold = true } ,
    Headline2                  { fg = light_green, bold = true } ,
    Headline3                  { fg = light_yellow, bold = true } ,
    Headline4                  { fg = light_blue, bold = true } ,
    Headline5                  { fg = light_magenta, bold = true } ,

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    -- sym'@text.literal'      { }, -- Comment
    -- sym'@text.reference'    { }, -- Identifier
    -- sym'@text.title'        { }, -- Title
    -- sym'@text.uri'          { }, -- Underlined
    -- sym'@text.underline'    { }, -- Underlined
    -- sym'@text.todo'         { }, -- Todo
    -- sym'@comment'           { }, -- Comment
    -- sym'@punctuation'       { }, -- Delimiter
    -- sym'@constant'          { }, -- Constant
    -- sym'@constant.builtin'  { }, -- Special
    -- sym'@constant.macro'    { }, -- Define
    -- sym'@define'            { }, -- Define
    -- sym'@macro'             { }, -- Macro
    -- sym'@string'            { }, -- String
    -- sym'@string.escape'     { }, -- SpecialChar
    -- sym'@string.special'    { }, -- SpecialChar
    -- sym'@character'         { }, -- Character
    -- sym'@character.special' { }, -- SpecialChar
    -- sym'@number'            { }, -- Number
    -- sym'@boolean'           { }, -- Boolean
    -- sym'@float'             { }, -- Float
    -- sym'@function'          { }, -- Function
    -- sym'@function.builtin'  { }, -- Special
    -- sym'@function.macro'    { }, -- Macro
    -- sym'@parameter'         { }, -- Identifier
    -- sym'@method'            { }, -- Function
    -- sym'@field'             { }, -- Identifier
    -- sym'@property'          { }, -- Identifier
    -- sym'@constructor'       { }, -- Special
    -- sym'@conditional'       { }, -- Conditional
    -- sym'@repeat'            { }, -- Repeat
    -- sym'@label'             { }, -- Label
    -- sym'@operator'          { }, -- Operator
    -- sym'@keyword'           { }, -- Keyword
    -- sym'@exception'         { }, -- Exception
    -- sym'@variable'          { }, -- Identifier
    -- sym'@type'              { }, -- Type
    -- sym'@type.definition'   { }, -- Typedef
    -- sym'@storageclass'      { }, -- StorageClass
    -- sym'@structure'         { }, -- Structure
    -- sym'@namespace'         { }, -- Identifier
    -- sym'@include'           { }, -- Include
    -- sym'@preproc'           { }, -- PreProc
    -- sym'@debug'             { }, -- Debug
    -- sym'@tag'               { }, -- Tag
    sym'@markup.heading.1.markdown' { fg = red, bold = true } ,
    sym'@markup.heading.2.markdown' { fg = light_green, bold = true } ,
    sym'@markup.heading.3.markdown' { fg = light_yellow, bold = true } ,
    sym'@markup.heading.4.markdown' { fg = light_blue, bold = true },
    sym'@markup.heading.5.markdown' { fg = light_magenta, bold = true } ,
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
