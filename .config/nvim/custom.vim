let mapleader = ","

" Enable Mouse
set mouse+=a

" LineNumbers:
" Toggle relative line number
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

set number
nmap <leader>nt :call NumberToggle()<CR>

" Zoom Toggle:
" Zoom / Restore window.
function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction
command! ZoomToggle call s:ZoomToggle()
nnoremap <silent> <c-w>z :ZoomToggle<CR>

" Jump forward in buffer to Ctrl+J 
nnoremap <C-j> <C-i>

" Set .x and .xm to ObjC++
augroup objcplus
    au!
    autocmd BufNewFile,BufRead *.x  set syntax=objcpp   filetype=objcpp
    autocmd BufNewFile,BufRead *.xm  set syntax=objcpp  filetype=objcpp
augroup END

" Indents/Tables
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

" Automatically indent to nearest indent
" Normally indent ('>' or '<') always goes a certain amount of space
" This allows for the indent to go to the next spot regardless of space
set shiftround

" html tag cursor movement 
nnoremap [t vit<esc>`<
nnoremap ]t vit<esc>`>

" Enable folding with the spacebar
nnoremap <space> za

" Move lines up and down with alt-[j/k]
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
