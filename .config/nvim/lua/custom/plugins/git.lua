return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup {
        signcolumn = true,
        numhl = true,
        linehl = true,
        current_line_blame = true,
        current_line_blame_formatter_opts = {
          relative_time = true,
        },
        on_attach = function(bufnr)
          local gitsigns = require "gitsigns"

          vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Git: Preview hunk" })
          vim.keymap.set(
            "n",
            "<leader>gt",
            ":Gitsigns toggle_current_line_blame<CR>",
            { desc = "Git: Toggle current line blame" }
          )
          vim.keymap.set("v", "<leader>hs", function()
            gitsigns.stage_hunk { vim.fn.line ".", vim.fn.line "n" }
          end, { desc = "Git: Stage hunk" })
          vim.keymap.set("n", "<leader>hu", gitsigns.undo_stage_hunk, { desc = "Git: Undo stage hunk" })
        end,
      }
    end,
  },
  { "airblade/vim-gitgutter" },
}
