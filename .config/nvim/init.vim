" plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'airblade/vim-gitgutter'
Plug 'benmills/vimux'
Plug 'christoomey/vim-sort-motion'
Plug 'elzr/vim-json'
Plug 'ernstvanderlinden/vim-coldfusion'
Plug 'honza/vim-snippets'
Plug 'https://gitlab.com/code-stats/code-stats-vim.git'
Plug 'justinmk/vim-sneak'
Plug 'machakann/vim-highlightedyank'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'numToStr/Comment.nvim'
Plug 'ObserverOfTime/discord.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'pechorin/any-jump.vim'
Plug 'petertriho/nvim-scrollbar'
Plug 'plasticboy/vim-markdown'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'psliwka/vim-smoothie'
Plug 'puremourning/vimspector'
Plug 'scrooloose/nerdTree'
Plug 'SirVer/ultisnips'
Plug 'TaDaa/vimade'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
Plug 'terryma/vim-multiple-cursors'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tmhedberg/SimpylFold'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tveskag/nvim-blame-line'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Xuyuanp/scrollbar.nvim'
Plug 'yggdroot/indentline'

" Typescript:
Plug 'HerringtonDarkholme/yats.vim'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'

" Tag matching:
Plug 'alvan/vim-closetag'
Plug 'andymass/vim-matchup'
Plug 'jiangmiao/auto-pairs'
Plug 'skanehira/preview-markdown.vim'

" LSP:
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'neovim/nvim-lspconfig'
Plug 'onsails/lspkind-nvim'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

" Telescope:
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'AckslD/nvim-neoclip.lua'

" Airline:
" Plug 'vim-airline/vim-airline'

" Lightline:
Plug 'itchyny/lightline.vim'

" Layout:
Plug 'akinsho/bufferline.nvim'
Plug 'godlygeek/tabular'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

" Parser:
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Themes:
" Plug 'dracula/vim',{'as':'dracula'}
" Plug 'joshdick/onedark.vim'
" Plug 'mhartington/oceanic-next'
" Plug 'morhetz/gruvbox'
" Plug 'rafalbromirski/vim-aurora'
" Plug 'rainglow/vim'
" Plug 'sainnhe/gruvbox-material'
" Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}

call plug#end()

source ~/.config/nvim/custom.vim
source ~/.config/nvim/python.vim
source ~/.config/nvim/themes.vim

" Module configuration:
" source ~/.config/nvim/modules/airline.vim
source ~/.config/nvim/modules/blameline.vim
source ~/.config/nvim/modules/bufferline.vim
source ~/.config/nvim/modules/codestats.vim
source ~/.config/nvim/modules/colorizer.vim
source ~/.config/nvim/modules/comment.vim
source ~/.config/nvim/modules/folds.vim
source ~/.config/nvim/modules/highlightedyank.vim
source ~/.config/nvim/modules/lsp.vim
source ~/.config/nvim/modules/lightline.vim
source ~/.config/nvim/modules/markdown.vim
source ~/.config/nvim/modules/nerdtree.vim
source ~/.config/nvim/modules/scrollbar.vim
source ~/.config/nvim/modules/sneak.vim
source ~/.config/nvim/modules/sortmotion.vim
source ~/.config/nvim/modules/splits.vim
source ~/.config/nvim/modules/tabs.vim
source ~/.config/nvim/modules/tags.vim
source ~/.config/nvim/modules/telescope.vim
source ~/.config/nvim/modules/ultisnips.vim
source ~/.config/nvim/modules/vimspector.vim
source ~/.config/nvim/modules/yank.vim
