local n_keymap = function(lhs, rhs, desc)
  vim.api.nvim_set_keymap("n", lhs, rhs, { noremap = true, silent = true, desc = desc })
end

require("bufferline").setup {
  options = {
    diagnostics = "nvim_lsp",
    middle_mouse_command = "bdelete! %d",
    right_mouse_command = nil,
    numbers = "ordinal",
    separator_style = "slant",
  },
  highlights = require("catppuccin.groups.integrations.bufferline").get_theme {
    styles = { "italic", "bold" },
  },
}

-- Create buffer
n_keymap("<leader>c", ":enew<CR>", "Create buffer")
-- Move to previouse/next
n_keymap("<leader>,", ":BufferLineCyclePrev<CR>", "Previous buffer")
n_keymap("<leader>.", ":BufferLineCycleNext<CR>", "Next buffer")
-- Re-order to previous/next
n_keymap("<leader><", ":BufferLineMovePrev<CR>", "Reorder buffer backwards")
n_keymap("<leader>>", ":BufferLineMoveNext<CR>", "Reorder buffer forwards")
-- Goto buffer in position
n_keymap("<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>", "Go to Buffer #1")
n_keymap("<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>", "Go to Buffer #2")
n_keymap("<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>", "Go to Buffer #3")
n_keymap("<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>", "Go to Buffer #4")
n_keymap("<leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>", "Go to Buffer #5")
n_keymap("<leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>", "Go to Buffer #6")
n_keymap("<leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>", "Go to Buffer #7")
n_keymap("<leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>", "Go to Buffer #8")
n_keymap("<leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>", "Go to Buffer #9")
n_keymap("<leader>p", ":BufferLinePick<CR>", "Bufferline pick from list")
-- Close
n_keymap("<leader>x", "<Cmd>bd<CR>", "Close Buffer")
n_keymap("<leader>X", "<Cmd>bd!<CR>", "Force close Buffer")
