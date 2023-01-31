" plugins
call plug#begin(stdpath('data') . '/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'eddyekofo94/gruvbox-flat.nvim'
call plug#end()

colorscheme gruvbox-flat

" Find files using Telescope command-line sugar.
nnoremap <leader>ff :Telescope find_files<CR>
nnoremap <leader>fg :Telescope live_grep<CR>
nnoremap <leader>fb :Telescope buffers<CR>
nnoremap <leader>fh :Telescope help_tags<CR>

let mapleader = ","
tnoremap <Esc> <C-\><C-n>
nnoremap <leader>sv :source $MYVIMRC<CR>

" airline config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='ayu_dark'

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

" coc-nvim config
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

lua << EOF
require('lua_stuff')
EOF

