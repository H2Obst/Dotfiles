" plugins
call plug#begin(stdpath('data') . '/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'lifepillar/vim-gruvbox8'
Plug 'dense-analysis/ale'
Plug 'skywind3000/asyncrun.vim'
Plug 'psliwka/vim-smoothie'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

let mapleader = ","
nnoremap <leader>t :new term://bash<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" color scheme
set background=dark
colorscheme gruvbox8

" airline config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='angr'

" syntax highlighting
syntax enable

" tabs instead of spaces
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

filetype indent on
set lazyredraw
set showmatch
set laststatus=2
set noshowmode
set showtabline=2

" search
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>
