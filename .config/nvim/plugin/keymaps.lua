local n_keymap = function(lhs, rhs)
  vim.api.nvim_set_keymap("n", lhs, rhs, { noremap = true })
end

local i_keymap = function(lhs, rhs)
  vim.api.nvim_set_keymap("i", lhs, rhs, { noremap = true })
end

local v_keymap = function(lhs, rhs)
  vim.api.nvim_set_keymap("v", lhs, rhs, { noremap = true })
end

-- Toggle between relative line numbers and absolute
vim.api.nvim_create_user_command("NumberToggle", function()
  vim.opt.relativenumber = not vim.o.relativenumber
end, { nargs = "?" })

n_keymap("<leader>nt", ":NumberToggle<CR>")

-- Move lines with alt-[j/k]
n_keymap("<A-j>", ":m .+1<CR>==")
n_keymap("<A-k>", ":m .-2<CR>==")
i_keymap("<A-j>", "<Esc>:m .+1<CR>==gi")
i_keymap("<A-k>", "<Esc>:m .-2<CR>==gi")
v_keymap("<A-j>", ":m '>+1<CR>gv=gv")
v_keymap("<A-k>", ":m '<-2<CR>gv=gv")
n_keymap("<C-b>", ":NvimTreeToggle<CR>")
