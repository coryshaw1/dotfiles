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
  highlights = require("catppuccin.special.bufferline").get_theme {
    styles = { "italic", "bold" },
  },
}

-- Create buffer
n_keymap("<leader>bc", ":enew<CR>", "Create buffer")

-- Move to previouse/next
n_keymap("<leader>,", ":BufferLineCyclePrev<CR>", "Previous buffer")
n_keymap("<leader>.", ":BufferLineCycleNext<CR>", "Next buffer")

-- Re-order to previous/next
n_keymap("<leader><", ":BufferLineMovePrev<CR>", "Reorder buffer backwards")
n_keymap("<leader>>", ":BufferLineMoveNext<CR>", "Reorder buffer forwards")

-- Goto buffer in position
n_keymap("<leader>p", ":BufferLinePick<CR>", "Bufferline pick from list")
for i = 1, 9 do
  n_keymap("<leader>" .. i, "<Cmd>BufferLineGoToBuffer " .. i .. "<CR>", "Go to Buffer #" .. i)
end

-- Close
n_keymap("<leader>x", "<Cmd>bd<CR>", "Close Buffer")
n_keymap("<leader>X", "<Cmd>bd!<CR>", "Force close Buffer")
