return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      { "windwp/nvim-ts-autotag" },
      { "echasnovski/mini.ai", version = "*", opts = {} },
    },
    build = ":TSUpdate",
    -- branch = "main",
    config = function()
      local treesitter = require "nvim-treesitter.configs"

      ---@diagnostic disable-next-line: missing-fields
      treesitter.setup {
        ensure_installed = {
          "bash",
          "css",
          "diff",
          "go",
          "html",
          "javascript",
          "jsdoc",
          "json",
          "jsonc",
          "lua",
          "luadoc",
          "luap",
          "markdown",
          "markdown_inline",
          "python",
          "query",
          "regex",
          "scss",
          "sql",
          "toml",
          "toml",
          "tsx",
          "typescript",
          "vim",
          "vimdoc",
          "xml",
          "yaml",
        },
        highlight = { enable = true },
        indent = { enable = true },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = false,
            node_decremental = "<bs>",
          },
        },
      }

      require("nvim-ts-autotag").setup()
      require("mini.ai").setup()
    end,
  },
}
