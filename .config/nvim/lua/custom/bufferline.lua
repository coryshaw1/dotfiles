local n_keymap = function(lhs, rhs)
  vim.api.nvim_set_keymap("n", lhs, rhs, { noremap = true, silent = true })
end

require("bufferline").setup {
  options = {
    diagnostics = "nvim_lsp",
    middle_mouse_command = "bdelete! %d",
    right_mouse_command = nil,
    numbers = "ordinal",
    separator_style = "slant",
  },
  highlights = require("catppuccin.groups.integrations.bufferline").get {
    styles = { "italic", "bold" },
  },
}

-- Create buffer
n_keymap("<leader>c", ":enew<CR>")
-- Move to previouse/next
n_keymap("<leader>,", ":BufferLineCyclePrev<CR>")
n_keymap("<leader>.", ":BufferLineCycleNext<CR>")
-- Re-order to previous/next
n_keymap("<leader><", ":BufferLineMovePrev<CR>")
n_keymap("<leader>>", ":BufferLineMoveNext<CR>")
-- Goto buffer in position
n_keymap("<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>")
n_keymap("<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>")
n_keymap("<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>")
n_keymap("<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>")
n_keymap("<leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>")
n_keymap("<leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>")
n_keymap("<leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>")
n_keymap("<leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>")
n_keymap("<leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>")
n_keymap("<leader>p", ":BufferLinePick<CR>")
-- Close
n_keymap("<leader>x", "<Cmd>bd<CR>")
n_keymap("<leader>X", "<Cmd>bd!<CR>")
