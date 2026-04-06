return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      { "windwp/nvim-ts-autotag" },
      { "nvim-mini/mini.ai", version = "*", opts = {} },
    },
    build = ":TSUpdate",
    branch = "main",
    lazy = false,
    config = function()
      require("nvim-treesitter").setup()

      -- Install parsers on startup
      vim.schedule(function()
        require("nvim-treesitter").install {
          "bash",
          "css",
          "diff",
          "go",
          "html",
          "javascript",
          "jsdoc",
          "json",
          "lua",
          "luadoc",
          "luap",
          "markdown",
          "markdown_inline",
          "python",
          "query",
          "regex",
          "rust",
          "scss",
          "sourcepawn",
          "sql",
          "toml",
          "tsx",
          "typescript",
          "vim",
          "vimdoc",
          "xml",
          "yaml",
        }
      end)

      -- Enable treesitter features for all filetypes
      vim.api.nvim_create_autocmd("FileType", {
        callback = function(args)
          local ok = pcall(vim.treesitter.start, args.buf)
          if not ok then
            return
          end
        end,
      })

      -- incremental selection
      vim.keymap.set({ "x", "o" }, "v", function()
        if vim.treesitter.get_parser(nil, nil, { error = false }) then
          require("vim.treesitter._select").select_parent(vim.v.count1)
        else
          vim.lsp.buf.selection_range(vim.v.count1)
        end
      end, { desc = "Select parent treesitter node or outer incremental lsp selections" })

      vim.keymap.set({ "x", "o" }, "V", function()
        if vim.treesitter.get_parser(nil, nil, { error = false }) then
          require("vim.treesitter._select").select_child(vim.v.count1)
        else
          vim.lsp.buf.selection_range(-vim.v.count1)
        end
      end, { desc = "Select child treesitter node or inner incremental lsp selections" })

      require("nvim-ts-autotag").setup()
      require("mini.ai").setup()
    end,
  },
}
