return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      { "windwp/nvim-ts-autotag" },
    },
    build = ":TSUpdate",
    -- branch = "main",
    config = function()
      local treesitter = require "nvim-treesitter.configs"

      ---@diagnostic disable-next-line: missing-fields
      treesitter.setup {
        ensure_installed = {
          "lua",
          "vim",
          "vimdoc",
          "go",
          "toml",
          "css",
          "tsx",
          "typescript",
          "css",
          "html",
          "bash",
          "javascript",
          "jsdoc",
          "json",
          "scss",
          "sql",
          "markdown",
          "markdown_inline",
          "python",
          "query",
          "regex",
          "yaml",
          "toml",
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
    end,
  },
}
