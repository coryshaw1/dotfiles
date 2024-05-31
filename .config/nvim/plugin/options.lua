local opt = vim.opt

----- Interesting Options -----
opt.inccommand = "split"

-- Best search settings
opt.smartcase = true
opt.ignorecase = true

----- Personal Preferences -----
opt.mouse = "a"

opt.number = true
opt.relativenumber = true

opt.splitbelow = true
opt.splitright = true

opt.signcolumn = "yes"
opt.shada = { "'10", "<0", "s10", "h" }

-- Hide mode since it is already in status line
opt.showmode = false

opt.clipboard = "unnamedplus"

-- nerd font
vim.g.have_nerd_font = true

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
opt.termguicolors = true

vim.cmd [[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
  augroup END
]]

vim.cmd [[
  autocmd FileType dbout setlocal nofoldenable
]]
