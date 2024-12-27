return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    transparent_background = false,
    background = {
      light = "latte",
      dark = "macchiato",
    },
    term_colors = true,
    styles = {
      comments = { "italic" },
      functions = { "italic" },
      keywords = { "italic" },
      strings = {},
      variables = { "italic" },
    },
    integrations = {
      alpha = false,
      barbar = false,
      bufferline = false,
      cmp = true,
      dashboard = true,
      fern = false,
      gitgutter = true,
      gitsigns = true,
      hop = false,
      indent_blankline = {
        enabled = true,
        colored_indent_levels = false,
      },
      lightspeed = false,
      markdown = true,
      native_lsp = {
        enabled = true,
        virtual_text = {
          errors = { "italic" },
          hints = { "italic" },
          warnings = { "italic" },
          information = { "italic" },
        },
        underlines = {
          errors = { "underline" },
          hints = { "underline" },
          warnings = { "underline" },
          information = { "underline" },
        },
      },
      neogit = false,
      notify = true,
      telekasten = true,
      telescope = true,
      treesitter = true,
      ts_rainbow = false,
      vim_sneak = false,
    },
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme "catppuccin"
    vim.cmd "hi Normal guibg=NONE ctermbg=NONE" -- force background to transparent, but not bufferline
  end,
}
