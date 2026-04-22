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
      bufferline = true,
      cmp = true,
      dap_ui = true,
      dashboard = true,
      fidget = true,
      gitgutter = true,
      gitsigns = true,
      harpoon = true,
      hop = false,
      indent_blankline = {
        enabled = true,
        colored_indent_levels = false,
      },
      lightspeed = false,
      mason = true,
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
      noice = true,
      notify = true,
      nvim_surrounds = true,
      render_markdown = true,
      snacks = {
        enabled = true,
        indent_scope_color = "lavender",
      },
      telekasten = true,
      telescope = {
        enabled = true,
      },
      treesitter = true,
      which_key = true,
    },
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme "catppuccin-nvim"
  end,
}
