return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup {
        on_attach = function(bufnr)
          local gitsigns = require "gitsigns"

          vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
          vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
          vim.keymap.set("v", "<leader>hs", function()
            gitsigns.stage_hunk { vim.fn.line ".", vim.fn.line "v" }
          end, {})
          vim.keymap.set("n", "<leader>hu", gitsigns.undo_stage_hunk, {})
        end,
      }
    end,
  },
  { "airblade/vim-gitgutter" },
}
