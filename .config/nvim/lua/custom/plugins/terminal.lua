return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup {
      open_mapping = [[<c-\>]],
      direction = "float",
      float_opts = {
        border = "curved",
        winblend = 3,
      },
    }
    vim.keymap.set("n", "<leader>tt", function()
      vim.cmd "ToggleTerm"
    end, { desc = "Toggle terminal" })

    -- Open terminal in insert mode
    vim.cmd "autocmd! TermOpen term://* lua vim.cmd('startinsert')"
  end,
}
