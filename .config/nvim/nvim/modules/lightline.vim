" Lightline:
let g:lightline = {
    \ 'colorscheme': 'catppuccin',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
    \   'right': [ [ 'lineinfo' ],
    \              [ 'percent' ],
    \              [ 'fileformat', 'fileencoding', 'filetype',  'codestats'] ]
    \ },
    \ 'component_function': {
    \   'codestats': 'CodeStatsXp',
    \   'gitbranch': 'FugitiveHead'
    \ },
    \ }


