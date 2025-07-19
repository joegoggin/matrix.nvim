local M = {}

local colors = require("colors").colors

M.lualine = {
    normal = {
        a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
    },
    insert = {
        a = { bg = colors.green, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
    },
    visual = {
        a = { bg = colors.magenta, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
    },
    command = {
        a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
    },
    replace = {
        a = { bg = colors.red, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
    },
    inactive = {
        a = { bg = colors.bright_black, fg = colors.white, gui = "bold" },
        b = { bg = colors.bright_black, fg = colors.white },
        c = { bg = colors.bright_black, fg = colors.white },
    },
}

function M.setup()
    vim.cmd("highlight clear")
    vim.cmd("syntax clear")

    vim.g.colors_name = "matrix"

    local set = vim.api.nvim_set_hl

    -- Editor highlights
    set(0, "Normal", { fg = colors.fg, bg = "None" })
    set(0, "NormalFloat", { fg = colors.fg, bg = colors.bg })
    set(0, "Cursor", { fg = colors.cursor_text, bg = colors.cursor })
    set(0, "CursorLine", { bg = "None" })
    set(0, "CursorColumn", { bg = colors.bright_black })
    set(0, "ColorColumn", { bg = colors.bright_black })
    set(0, "LineNr", { fg = colors.white })
    set(0, "CursorLineNr", { fg = colors.yellow, bold = true })
    set(0, "Visual", { fg = colors.selected_text, bg = colors.selection })
    set(0, "VisualNOS", { fg = colors.selected_text, bg = colors.selection })
    set(0, "Search", { fg = colors.black, bg = colors.yellow })
    set(0, "IncSearch", { fg = colors.black, bg = colors.bright_yellow })

    -- Syntax highlighting
    set(0, "Comment", { fg = colors.comment, italic = true })
    set(0, "Constant", { fg = colors.red })
    set(0, "String", { fg = colors.green })
    set(0, "Character", { fg = colors.green })
    set(0, "Number", { fg = colors.red })
    set(0, "Boolean", { fg = colors.red })
    set(0, "Float", { fg = colors.red })
    set(0, "Identifier", { fg = colors.cyan })
    set(0, "Function", { fg = colors.blue })
    set(0, "Statement", { fg = colors.magenta })
    set(0, "Conditional", { fg = colors.magenta })
    set(0, "Repeat", { fg = colors.magenta })
    set(0, "Label", { fg = colors.magenta })
    set(0, "Operator", { fg = colors.bright_red })
    set(0, "Keyword", { fg = colors.magenta })
    set(0, "Exception", { fg = colors.magenta })
    set(0, "PreProc", { fg = colors.yellow })
    set(0, "Include", { fg = colors.yellow })
    set(0, "Define", { fg = colors.yellow })
    set(0, "Macro", { fg = colors.yellow })
    set(0, "PreCondit", { fg = colors.yellow })
    set(0, "Type", { fg = colors.blue })
    set(0, "StorageClass", { fg = colors.blue })
    set(0, "Structure", { fg = colors.blue })
    set(0, "Typedef", { fg = colors.blue })
    set(0, "Special", { fg = colors.bright_cyan })
    set(0, "SpecialChar", { fg = colors.bright_cyan })
    set(0, "Tag", { fg = colors.bright_cyan })
    set(0, "Delimiter", { fg = colors.fg })
    set(0, "SpecialComment", { fg = colors.bright_cyan })
    set(0, "Debug", { fg = colors.bright_cyan })
    set(0, "Underlined", { fg = colors.link, underline = true })
    set(0, "Error", { fg = colors.bright_red, bg = colors.bg })
    set(0, "Todo", { fg = colors.bright_yellow, bg = colors.bg, bold = true })

    -- UI elements
    set(0, "Pmenu", { fg = colors.fg, bg = colors.bg })
    set(0, "PmenuSel", { fg = colors.selected_text, bg = colors.selection })
    set(0, "PmenuSbar", { bg = colors.bright_black })
    set(0, "PmenuThumb", { bg = colors.white })
    set(0, "StatusLine", { fg = colors.fg, bg = colors.bright_black })
    set(0, "StatusLineNC", { fg = colors.white, bg = colors.black })
    set(0, "TabLine", { fg = colors.white, bg = "None" })
    set(0, "TabLineFill", { bg = "None" })
    set(0, "TabLineSel", { fg = colors.fg, bg = "None" })
    set(0, "WildMenu", { fg = colors.selected_text, bg = colors.selection })
    set(0, "VertSplit", { fg = colors.bright_black })
    set(0, "Folded", { fg = colors.white, bg = colors.bright_black })
    set(0, "FoldColumn", { fg = colors.white, bg = colors.bg })
    set(0, "SignColumn", { fg = colors.white, bg = "None" })
    set(0, "MatchParen", { fg = colors.bright_yellow, bg = "None", bold = true })

    -- Diff highlighting
    set(0, "DiffAdd", { fg = colors.green, bg = colors.bg })
    set(0, "DiffChange", { fg = colors.yellow, bg = colors.bg })
    set(0, "DiffDelete", { fg = colors.red, bg = colors.bg })
    set(0, "DiffText", { fg = colors.bright_yellow, bg = colors.bg, bold = true })

    -- Git signs (if using gitsigns.nvim)
    set(0, "GitSignsAdd", { fg = colors.green })
    set(0, "GitSignsChange", { fg = colors.yellow })
    set(0, "GitSignsDelete", { fg = colors.red })

    -- LSP highlighting
    set(0, "DiagnosticError", { fg = colors.bright_red })
    set(0, "DiagnosticWarn", { fg = colors.yellow })
    set(0, "DiagnosticInfo", { fg = colors.cyan })
    set(0, "DiagnosticHint", { fg = colors.bright_cyan })

    -- TreeSitter highlighting (if using nvim-treesitter)
    set(0, "@comment", { link = "Comment" })
    set(0, "@constant", { link = "Constant" })
    set(0, "@string", { link = "String" })
    set(0, "@number", { link = "Number" })
    set(0, "@boolean", { link = "Boolean" })
    set(0, "@function", { link = "Function" })
    set(0, "@keyword", { link = "Keyword" })
    set(0, "@operator", { link = "Operator" })
    set(0, "@type", { link = "Type" })
    set(0, "@variable", { fg = colors.fg })
    set(0, "@property", { fg = colors.cyan })
    set(0, "@parameter", { fg = colors.bright_red })
end

return M
