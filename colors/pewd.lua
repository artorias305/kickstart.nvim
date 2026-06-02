if vim.g.colors_name then
  vim.cmd("hi clear")
end

if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.g.colors_name = "pewd"

local c = {
  bg = "#282c34",
  bg_alt = "#21252b",
  bg_float = "#1f232a",
  bg_sel = "#3e4451",
  fg = "#9cdef2",
  fg_dim = "#828997",
  fg_soft = "#6b778d",
  cursor = "#528bff",
  line = "#2c313a",
  comment = "#5c6370",
  red = "#e06c75",
  orange = "#d19a66",
  yellow = "#e5c07b",
  green = "#9cdef2",
  blue = "#61afef",
  purple = "#c678dd",
  cyan = "#56b6c2",
  neon = "#8be9fd",
  mint = "#98f5e1",
  white = "#d8dee9",
  black = "#1b1f24",
  border = "#3b4252",
  border_active = "#528bff",
}

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

local function link(group, target)
  vim.api.nvim_set_hl(0, group, { link = target, default = false })
end

vim.g.terminal_color_0 = c.black
vim.g.terminal_color_1 = c.red
vim.g.terminal_color_2 = c.green
vim.g.terminal_color_3 = c.yellow
vim.g.terminal_color_4 = c.blue
vim.g.terminal_color_5 = c.purple
vim.g.terminal_color_6 = c.cyan
vim.g.terminal_color_7 = c.white
vim.g.terminal_color_8 = c.fg_dim
vim.g.terminal_color_9 = c.red
vim.g.terminal_color_10 = c.green
vim.g.terminal_color_11 = c.yellow
vim.g.terminal_color_12 = c.blue
vim.g.terminal_color_13 = c.purple
vim.g.terminal_color_14 = c.neon
vim.g.terminal_color_15 = c.fg

hl("Normal", { fg = c.fg, bg = c.bg })
hl("NormalNC", { fg = c.fg, bg = c.bg })
hl("NormalFloat", { fg = c.fg, bg = c.bg_float })
hl("FloatBorder", { fg = c.border, bg = c.bg_float })
hl("FloatTitle", { fg = c.neon, bg = c.bg_float, bold = true })
hl("EndOfBuffer", { fg = c.bg })
hl("VertSplit", { fg = c.border, bg = c.bg })
hl("WinSeparator", { fg = c.border, bg = c.bg })
hl("Folded", { fg = c.fg_soft, bg = c.bg_alt })
hl("FoldColumn", { fg = c.fg_soft, bg = c.bg })
hl("SignColumn", { bg = c.bg })
hl("ColorColumn", { bg = c.bg_alt })
hl("Cursor", { fg = c.bg, bg = c.cursor })
hl("CursorLine", { bg = c.bg_alt })
hl("CursorColumn", { bg = c.bg_alt })
hl("CursorLineNr", { fg = c.neon, bold = true })
hl("LineNr", { fg = c.fg_soft, bg = c.bg })
hl("StatusLine", { fg = c.fg, bg = c.bg_alt })
hl("StatusLineNC", { fg = c.fg_soft, bg = c.bg_alt })
hl("TabLine", { fg = c.fg_soft, bg = c.bg_alt })
hl("TabLineFill", { fg = c.fg_soft, bg = c.bg_alt })
hl("TabLineSel", { fg = c.bg, bg = c.neon, bold = true })
hl("Pmenu", { fg = c.fg, bg = c.bg_float })
hl("PmenuSel", { fg = c.bg, bg = c.neon, bold = true })
hl("PmenuSbar", { bg = c.bg_alt })
hl("PmenuThumb", { bg = c.border_active })
hl("WildMenu", { fg = c.bg, bg = c.yellow, bold = true })
hl("Visual", { bg = c.bg_sel })
hl("VisualNOS", { bg = c.bg_sel })
hl("Search", { fg = c.bg, bg = c.yellow })
hl("IncSearch", { fg = c.bg, bg = c.neon, bold = true })
hl("CurSearch", { fg = c.bg, bg = c.neon, bold = true })
hl("MatchParen", { fg = c.neon, bg = c.bg_alt, bold = true })
hl("QuickFixLine", { bg = c.bg_alt, bold = true })
hl("MsgArea", { fg = c.fg })
hl("ModeMsg", { fg = c.neon, bold = true })
hl("MoreMsg", { fg = c.neon, bold = true })
hl("ErrorMsg", { fg = c.red, bold = true })
hl("WarningMsg", { fg = c.yellow, bold = true })
hl("Question", { fg = c.neon, bold = true })
hl("Directory", { fg = c.blue, bold = true })
hl("Title", { fg = c.neon, bold = true })
hl("NonText", { fg = c.fg_soft })
hl("SpecialKey", { fg = c.fg_soft })
hl("Whitespace", { fg = c.bg_sel })
hl("Conceal", { fg = c.fg_soft })

hl("Comment", { fg = c.comment, italic = true })
hl("Constant", { fg = c.orange })
hl("String", { fg = c.green })
hl("Character", { fg = c.green })
hl("Number", { fg = c.orange })
hl("Boolean", { fg = c.orange, bold = true })
hl("Float", { fg = c.orange })
hl("Identifier", { fg = c.fg })
hl("Function", { fg = c.blue, bold = true })
hl("Statement", { fg = c.purple })
hl("Conditional", { fg = c.purple, bold = true })
hl("Repeat", { fg = c.purple, bold = true })
hl("Label", { fg = c.purple })
hl("Operator", { fg = c.neon })
hl("Keyword", { fg = c.purple, bold = true })
hl("Exception", { fg = c.red, bold = true })
hl("PreProc", { fg = c.yellow })
hl("Include", { fg = c.blue })
hl("Define", { fg = c.purple })
hl("Macro", { fg = c.yellow })
hl("PreCondit", { fg = c.purple })
hl("Type", { fg = c.yellow, bold = true })
hl("StorageClass", { fg = c.blue })
hl("Structure", { fg = c.blue })
hl("Typedef", { fg = c.yellow })
hl("Special", { fg = c.cyan })
hl("SpecialChar", { fg = c.cyan })
hl("Tag", { fg = c.blue })
hl("Delimiter", { fg = c.fg_dim })
hl("Underlined", { fg = c.blue, underline = true })
hl("Bold", { bold = true })
hl("Italic", { italic = true })
hl("Ignore", { fg = c.fg_soft })
hl("Error", { fg = c.red, bold = true })
hl("Todo", { fg = c.yellow, bg = c.bg_alt, bold = true })

hl("DiagnosticError", { fg = c.red })
hl("DiagnosticWarn", { fg = c.yellow })
hl("DiagnosticInfo", { fg = c.blue })
hl("DiagnosticHint", { fg = c.neon })
hl("DiagnosticOk", { fg = c.green })
hl("DiagnosticVirtualTextError", { fg = c.red, bg = c.bg_alt })
hl("DiagnosticVirtualTextWarn", { fg = c.yellow, bg = c.bg_alt })
hl("DiagnosticVirtualTextInfo", { fg = c.blue, bg = c.bg_alt })
hl("DiagnosticVirtualTextHint", { fg = c.neon, bg = c.bg_alt })
hl("DiagnosticUnderlineError", { sp = c.red, undercurl = true })
hl("DiagnosticUnderlineWarn", { sp = c.yellow, undercurl = true })
hl("DiagnosticUnderlineInfo", { sp = c.blue, undercurl = true })
hl("DiagnosticUnderlineHint", { sp = c.neon, undercurl = true })
hl("DiagnosticFloatingError", { fg = c.red, bg = c.bg_float })
hl("DiagnosticFloatingWarn", { fg = c.yellow, bg = c.bg_float })
hl("DiagnosticFloatingInfo", { fg = c.blue, bg = c.bg_float })
hl("DiagnosticFloatingHint", { fg = c.neon, bg = c.bg_float })

hl("DiffAdd", { fg = c.green, bg = c.bg_alt })
hl("DiffChange", { fg = c.blue, bg = c.bg_alt })
hl("DiffDelete", { fg = c.red, bg = c.bg_alt })
hl("DiffText", { fg = c.neon, bg = c.bg_sel, bold = true })
hl("GitSignsAdd", { fg = c.green })
hl("GitSignsChange", { fg = c.blue })
hl("GitSignsDelete", { fg = c.red })

hl("SpellBad", { sp = c.red, undercurl = true })
hl("SpellCap", { sp = c.yellow, undercurl = true })
hl("SpellLocal", { sp = c.blue, undercurl = true })
hl("SpellRare", { sp = c.neon, undercurl = true })

link("@comment", "Comment")
link("@constant", "Constant")
link("@string", "String")
link("@character", "Character")
link("@number", "Number")
link("@boolean", "Boolean")
link("@function", "Function")
link("@function.call", "Function")
link("@function.builtin", "Function")
link("@keyword", "Keyword")
link("@keyword.function", "Keyword")
link("@keyword.return", "Keyword")
link("@operator", "Operator")
link("@type", "Type")
link("@type.builtin", "Type")
link("@type.definition", "Type")
link("@variable", "Identifier")
link("@variable.builtin", "Identifier")
link("@property", "Identifier")
link("@field", "Identifier")
link("@constructor", "Function")
link("@punctuation", "Delimiter")
link("@punctuation.delimiter", "Delimiter")
link("@punctuation.bracket", "Delimiter")
link("@punctuation.special", "Special")
link("@string.escape", "SpecialChar")
link("@string.special", "SpecialChar")
link("@module", "Identifier")
link("@namespace", "Identifier")
link("@attribute", "Special")
link("@tag", "Tag")
link("@tag.attribute", "Identifier")
link("@tag.delimiter", "Delimiter")
link("@text", "Normal")
link("@text.emphasis", "Italic")
link("@text.strong", "Bold")
link("@text.uri", "Underlined")
link("@text.literal", "String")
link("@text.reference", "Identifier")
link("@text.title", "Title")
link("@text.todo", "Todo")
link("@markup.heading", "Title")
link("@markup.italic", "Italic")
link("@markup.strong", "Bold")
link("@markup.raw", "String")
link("@markup.quote", "Comment")
link("@markup.link", "Underlined")

hl("LspReferenceText", { bg = c.bg_sel })
hl("LspReferenceRead", { bg = c.bg_sel })
hl("LspReferenceWrite", { bg = c.bg_sel, bold = true })
hl("TelescopeNormal", { fg = c.fg, bg = c.bg_float })
hl("TelescopeBorder", { fg = c.border, bg = c.bg_float })
hl("TelescopePromptNormal", { fg = c.fg, bg = c.bg_alt })
hl("TelescopePromptBorder", { fg = c.border_active, bg = c.bg_alt })
hl("TelescopePromptPrefix", { fg = c.neon, bg = c.bg_alt, bold = true })
hl("TelescopeSelection", { fg = c.neon, bg = c.bg_sel, bold = true })
hl("TelescopeMatching", { fg = c.yellow, bold = true })
hl("NvimTreeNormal", { fg = c.fg, bg = c.bg })
hl("NvimTreeEndOfBuffer", { fg = c.bg })
hl("NeoTreeNormal", { fg = c.fg, bg = c.bg })
hl("NeoTreeEndOfBuffer", { fg = c.bg })
hl("WhichKey", { fg = c.neon })
hl("WhichKeyGroup", { fg = c.blue })
hl("WhichKeyDesc", { fg = c.fg })

hl("Added", { fg = c.green })
hl("Changed", { fg = c.blue })
hl("Removed", { fg = c.red })
