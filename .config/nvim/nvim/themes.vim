" Theme Options:
" color dracula
" color deep-space
" color solarized8
" color onedark
" color tender
" color tonic
" color halflife
" color neodark
" color OceanicNext
" color gruvbox
" color gruvbox-material
" color aurora
color catppuccin

set termguicolors
set t_Co=256
set t_ut=
let g:deepspace_italics=1
let g:neodark#use_256color = 1

" Always show tabs 
set showtabline=2
" We don't need to see things like -- INSERT -- anymore
set noshowmode

" catppuccino
lua << EOF
local catppuccin = require("catppuccin")

catppuccin.setup({
    transparent_background = false,
    term_colors = false,
    styles = {
        comments = "italic",
        functions = "italic",
        keywords = "italic",
        strings = "NONE",
        variables = "italic",
    },
    integrations = {
        treesitter = true,
        native_lsp = {
            enabled = true,
            virtual_text = {
                errors = "italic",
                hints = "italic",
                warnings = "italic",
                information = "italic",
            },
            underlines = {
                errors = "underline",
                hints = "underline",
                warnings = "underline",
                information = "underline",
            },
        },
        lsp_trouble = false,
        cmp = true,
        lsp_saga = false,
        gitgutter = false,
        gitsigns = true,
        telescope = true,
        nvimtree = {
            enabled = true,
            show_root = false,
        },
        which_key = false,
        indent_blankline = {
            enabled = true,
            colored_indent_levels = false,
        },
        dashboard = true,
        neogit = false,
        vim_sneak = false,
        fern = false,
        barbar = false,
        bufferline = true,
        markdown = true,
        lightspeed = false,
        ts_rainbow = false,
        hop = false,
        notify = true,
        telekasten = true,
    }
})

catppuccin.load()
EOF
