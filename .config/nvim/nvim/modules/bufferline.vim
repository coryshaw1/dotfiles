set termguicolors

nnoremap <silent>b] :BufferLineCycleNext<CR>
nnoremap <silent>b[ :BufferLineCyclePrev<CR>

" Move to previous/next
nnoremap <leader>m :BufferLineCyclePrev<CR>
nnoremap <leader>, :BufferLineCycleNext<CR>
" Re-order to previous/next
nnoremap <leader>< :BufferLineMovePrev<CR>
nnoremap <leader>> :BufferLineMoveNext<CR>
" Goto buffer in position...
nnoremap <leader>1 <Cmd>BufferLineGoToBuffer 1<CR>
nnoremap <leader>2 <Cmd>BufferLineGoToBuffer 2<CR>
nnoremap <leader>3 <Cmd>BufferLineGoToBuffer 3<CR>
nnoremap <leader>4 <Cmd>BufferLineGoToBuffer 4<CR>
nnoremap <leader>5 <Cmd>BufferLineGoToBuffer 5<CR>
nnoremap <leader>6 <Cmd>BufferLineGoToBuffer 6<CR>
nnoremap <leader>7 <Cmd>BufferLineGoToBuffer 7<CR>
nnoremap <leader>8 <Cmd>BufferLineGoToBuffer 8<CR>
nnoremap <leader>9 <Cmd>BufferLineGoToBuffer 9<CR>
nnoremap <leader>p :BufferLinePick<CR>
" Close 
nnoremap <leader>x <Cmd>bd<CR>
nnoremap <leader>X <Cmd>bd!<CR>

lua << EOF
require("bufferline").setup{
    options = {
        diagnostics = "nvim_lsp",
        middle_mouse_command = "bdelete! %d",
        right_mouse_command = nil,
        numbers = "ordinal",
        separator_style = "slant"
    }
}
EOF
