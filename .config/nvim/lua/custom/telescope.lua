local data = assert(vim.fn.stdpath "data") --[[@as string]]

require("telescope").setup {
  extensions = {
    fzf = {},
    wrap_results = true,
    history = {
      limit = 100,
    },
  },
}

require("neoclip").setup {
  on_paste = {
    move_to_front = true,
    close_telescope = true,
  },
  keys = {
    telescope = {
      i = {
        paste = "<c-p>",
        paste_behind = "<c-k>",
      },
      n = {
        paste = { "p", "<c-p>" },
        paste_behind = { "P", "<c-k>" },
      },
    },
  },
}

pcall(require("telescope").load_extension, "fzf")
pcall(require("telescope").load_extension, "neoclip")

local builtin = require "telescope.builtin"

vim.keymap.set("n", "<leader>ff", builtin.find_files)
vim.keymap.set("n", "<C-P>", builtin.find_files)
vim.keymap.set("n", "<leader>fg", builtin.live_grep)
vim.keymap.set("n", "<leader>fb", builtin.buffers)
vim.keymap.set("n", "<leader>fh", builtin.help_tags)
vim.keymap.set("n", "<leader>fr", builtin.lsp_references)
vim.keymap.set("n", "gr", builtin.lsp_references)
vim.keymap.set("n", "<C-_>", builtin.current_buffer_fuzzy_find)
vim.keymap.set("n", "<C-m>", ":Telescope neoclip a<cr>")

vim.keymap.set("n", "<leader>fs", builtin.grep_string)

vim.keymap.set("n", "<leader>fa", function()
  ---@diagnostic disable-next-line: param-type-mismatch
  builtin.find_files { cwd = vim.fs.joinpath(vim.fn.stdpath "data", "lazy") }
end)

vim.keymap.set("n", "<leader>en", function()
  builtin.find_files { cwd = vim.fn.stdpath "config" }
end)
