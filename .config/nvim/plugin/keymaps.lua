local n_keymap = function(lhs, rhs, desc)
  vim.api.nvim_set_keymap("n", lhs, rhs, { noremap = true, desc = desc })
end

local i_keymap = function(lhs, rhs, desc)
  vim.api.nvim_set_keymap("i", lhs, rhs, { noremap = true, desc = desc })
end

local v_keymap = function(lhs, rhs, desc)
  vim.api.nvim_set_keymap("v", lhs, rhs, { noremap = true, desc = desc })
end

-- Toggle between relative line numbers and absolute
vim.api.nvim_create_user_command("NumberToggle", function()
  vim.opt.relativenumber = not vim.o.relativenumber
end, { nargs = "?" })

n_keymap("<leader>nt", ":NumberToggle<CR>", "Toggle between relative and absolute numbers")

-- Move lines with alt-[j/k]
n_keymap("<A-j>", ":m .+1<CR>==", "Move line down")
n_keymap("<A-k>", ":m .-2<CR>==", "Move line up")
i_keymap("<A-j>", "<Esc>:m .+1<CR>==gi", "Move line down")
i_keymap("<A-k>", "<Esc>:m .-2<CR>==gi", "Move line up")
v_keymap("<A-j>", ":m '>+1<CR>gv=gv", "Move line down")
v_keymap("<A-k>", ":m '<-2<CR>gv=gv", "Move line up")
n_keymap("<C-b>", ":NvimTreeFindFileToggle<CR>", "Toggle nvim-tree")

-- Windows/Panes
n_keymap("<leader>sv", "<C-w>v", "Split window vertically")
n_keymap("<leader>sh", "<C-w>s", "Split window horizontally")
n_keymap("<leader>se", "<C-w>=", "Make splits equal size")
n_keymap("<leader>sx", "<cmd>close<CR>", "Close current split")
