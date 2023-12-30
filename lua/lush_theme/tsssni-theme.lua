local lush = require('lush')
local hsl = lush.hsl

vim.g.terminal_color_0  = "#333333"
vim.g.terminal_color_8  = "#777777"

vim.g.terminal_color_1  = "#ff0055"
vim.g.terminal_color_9  = "#ff6699"

vim.g.terminal_color_2  = "#61a702"
vim.g.terminal_color_10 = "#bef743"

vim.g.terminal_color_3  = "#fccb2e"
vim.g.terminal_color_11 = "#ffff40"

vim.g.terminal_color_4  = "#4685ea"
vim.g.terminal_color_12 = "#85b4ff"

vim.g.terminal_color_5  = "#8b4efc"
vim.g.terminal_color_13 = "#a8a8ff"

vim.g.terminal_color_6  = "#00ffc8"
vim.g.terminal_color_14 = "#7ff5f5"

vim.g.terminal_color_7  = "#aaaabb"
vim.g.terminal_color_15 = "#f8f8ff"


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
    ColorColumn    { fg = '#f8f8ff', bg = '#ff0055' }, -- Columns set with 'colorcolumn'
    Conceal        { fg = '#777777' }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor         { fg = '#4685ea' }, -- Character under the cursor
    CurSearch      { fg = '#333333', bg = '#a8a8ff' }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    lCursor        { fg = '#aaaabb' }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM       { fg = '#aaaabb' }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn   { fg = '#ff6699', bg = '#333333' }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine     { fg = '#ff6699', bg = '#333333'  }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory      { fg = '#ff0055' }, -- Directory names (and other special names in listings)
    DiffAdd        { fg = '#bef743' }, -- Diff mode: Added line |diff.txt|
    DiffChange     { fg = '#ffff40' }, -- Diff mode: Changed line |diff.txt|
    DiffDelete     { fg = '#ff0055' }, -- Diff mode: Deleted line |diff.txt|
    DiffText       { fg = '#85b4ff' }, -- Diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer    { fg = '#4685ea' }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    TermCursor     { fg = '#333333', bg = '#777777' }, -- Cursor in a focused terminal
    TermCursorNC   { fg = '#777777' }, -- Cursor in an unfocused terminal
    ErrorMsg       { fg = '#f8f8ff', bg = '#ff0055' }, -- Error messages on the command line
    VertSplit      { fg = '#333333' }, -- Column separating vertically split windows
    Folded         { fg = '#f8f8ff', bg = '#ff6699' }, -- Line used for closed folds
    FoldColumn     { fg = '#f8f8ff', bg = '#ff6699' }, -- 'foldcolumn'
    SignColumn     { fg = '#ff0055', bg = '#120b10' }, -- Column where |signs| are displayed
    IncSearch      { fg = '#333333', bg = '#a8a8ff' }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute     { fg = '#333333', bg = '#a8a8ff' }, -- |:substitute| replacement text highlighting
    LineNr         { fg = '#8b4efc' }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    -- LineNrAbove    { }, -- Line number for when the 'relativenumber' option is set, above the cursor line
    -- LineNrBelow    { }, -- Line number for when the 'relativenumber' option is set, below the cursor line
    CursorLineNr   { fg = '#a8a8ff' }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
    -- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
    MatchParen     { fg = '#fccb2e' }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg        { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea        { }, -- Area for messages and cmdline
    -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg        { }, -- |more-prompt|
    NonText        { fg = '#333333' }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal         { fg = '#f5c1e9', bg = '#120b10' }, -- Normal text
    NormalFloat    { fg = '#f5c1e9', bg = '#000000' }, -- Normal text in floating windows.
    -- FloatBorder    { }, -- Border of floating windows.
    -- FloatTitle     { }, -- Title of floating windows.
    -- NormalNC       { }, -- normal text in non-current windows
    Pmenu          { fg = '#ff6699', bg = '#000000' }, -- Popup menu: Normal item.
    PmenuSel       { fg = '#f8f8ff', bg = '#ff0055' }, -- Popup menu: Selected item.
    -- PmenuKind      { }, -- Popup menu: Normal item "kind"
    -- PmenuKindSel   { }, -- Popup menu: Selected item "kind" 
    -- PmenuExtra     { }, -- Popup menu: Normal item "extra text" 
    -- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text" 
    PmenuSbar      { fg = '#777777', bg = '#333333' }, -- Popup menu: Scrollbar.
    PmenuThumb     { fg = '#f8f8ff', bg = '#ff0055' }, -- Popup menu: Thumb of the scrollbar. l
    Question       { fg = '#61a702' }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine   { fg = '#333333', bg = '#ffff40' }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search         { fg = '#333333', bg = '#a8a8ff' }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    SpecialKey     { fg = '#00ffc8' }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad       { fg = '#aaaabb', sp = '#ff0055', undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap       { fg = '#aaaabb', sp = '#4685ea', undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal     { fg = '#aaaabb', sp = '#00ffc8', undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare      { fg = '#aaaabb', sp = '#8b4efc', undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine     { fg = '#f8f8ff', bg = '#000000' }, -- Status line of current window
    StatusLineNC   { fg = '#aaaabb', bg = '#000000' }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine        { }, -- Tab pages line, not active tab page label
    -- TabLineFill    { }, -- Tab pages line, where there are no labels
    -- TabLineSel     { }, -- Tab pages line, active tab page label
    Title          { fg = '#ff0055' }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual         { fg = '#f8f8ff', bg = "#ff0055" }, -- Visual mode selection
    VisualNOS      { fg = '#777777' }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg     { fg = '#ff0055' }, -- Warning messages
    Whitespace     { fg = '#333333' }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    Winseparator   { fg = '#333333' }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    WildMenu       { fg = '#ff0055' }, -- Current match in 'wildmenu' completion
    WinBar         { fg = '#777777' }, -- Window bar of current window
    WinBarNC       { fg = '#777777' }, -- Window bar of not-current windows
    DashboardHeader { fg = '#ff0055' },
    DashboardFooter { fg = '#333333' },
    DashboardProjectTitle { fg = '#00ffc8' },
    DashboardMruTitle { fg = '#00ffc8' },
    DashboardShortCut { fg = '#00ffc8' },

    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment        { fg = '#777777' }, -- Any comment

    Constant       { fg = '#bef743' }, -- (*) Any constant
    String         { fg = '#61a702' }, --   A string constant: "this is a string"
    Character      { fg = '#61a702' }, --   A character constant: 'c', '\n'
    -- Number         { }, --   A number constant: 234, 0xff
    -- Boolean        { }, --   A boolean constant: TRUE, false
    -- Float          { }, --   A floating point constant: 2.3e10

    Identifier     { fg = '#fccb2e' }, -- (*) Any variable name
    Function       { fg = '#ffff40' }, --   Function name (also: methods for classes)

    Statement      { fg = '#7ff5f5' }, -- (*) Any statement
    -- Conditional    { }, --   if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    -- Operator       { }, --   "sizeof", "+", "*", etc.
    -- Keyword        { }, --   any other keyword
    -- Exception      { }, --   try, catch, throw

    PreProc        { fg = '#a8a8ff' }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type           { fg = '#ff0055' }, -- (*) int, long, char, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    Special        { fg = '#46a5ea' }, -- (*) Any special symbol
    -- SpecialChar    { }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    -- Delimiter      { }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    Underlined     { gui = 'underline', fg = '#8b4efc' }, -- Text that stands out, HTML links
    Ignore         { fg = "#777777" }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error          { fg = '#00ffc8', bg = '#ff0055' }, -- Any erroneous construct
    Todo           { fg = '#333333', bg = '#ffff40' }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

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
    DiagnosticError            { fg = '#ff0055' } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg = '#fccb2e' } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = '#4685ea' } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg = '#00ffc8' } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticOk               { fg = '#bef743' } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
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

    -- sym"@text.literal"      { }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo
    -- sym"@comment"           { }, -- Comment
    -- sym"@punctuation"       { }, -- Delimiter
    -- sym"@constant"          { }, -- Constant
    -- sym"@constant.builtin"  { }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- String
    -- sym"@string.escape"     { }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    -- sym"@character"         { }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    -- sym"@number"            { }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    -- sym"@function"          { }, -- Function
    -- sym"@function.builtin"  { }, -- Special
    -- sym"@function.macro"    { }, -- Macro
    -- sym"@parameter"         { }, -- Identifier
    -- sym"@method"            { }, -- Function
    -- sym"@field"             { }, -- Identifier
    -- sym"@property"          { }, -- Identifier
    -- sym"@constructor"       { }, -- Special
    -- sym"@conditional"       { }, -- Conditional
    -- sym"@repeat"            { }, -- Repeat
    -- sym"@label"             { }, -- Label
    -- sym"@operator"          { }, -- Operator
    -- sym"@keyword"           { }, -- Keyword
    -- sym"@exception"         { }, -- Exception
    -- sym"@variable"          { }, -- Identifier
    -- sym"@type"              { }, -- Type
    -- sym"@type.definition"   { }, -- Typedef
    -- sym"@storageclass"      { }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    -- sym"@namespace"         { }, -- Identifier
    -- sym"@include"           { }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
