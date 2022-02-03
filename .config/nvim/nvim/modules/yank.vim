" Yank to local clipboard
set clipboard=unnamedplus

" Remap 'c', 'C', 'd', 'D', 'x' and 'X' to save text in a custom register
" This makes only yanks copy to clipboard
nnoremap c "cc
vnoremap c "cc
nnoremap C "cC
vnoremap C "cC

nnoremap d "dd
vnoremap d "dd  
nnoremap D "dD
vnoremap D "dD

nnoremap x "xx
vnoremap x "xx
nnoremap X "xX
vnoremap X "xX
