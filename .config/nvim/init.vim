" plugins
call plug#begin(stdpath('data') . '/plugged')
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neomake/neomake'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'davidhalter/jedi-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
call plug#end()

let mapleader = ","
nnoremap <leader>t :new term://bash<CR>

" syntax highlighting
syntax enable

"color scheme
colorscheme onedark
set background = "dark"
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

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

" NerdTree stuff
map <C-o> :NERDTreeToggle<CR>
nmap <leader>r :NERDTreeFocus<cr>R<c-w><c-p>

" deoplete config
let g:deoplete#enable_at_startup = 1
set splitbelow
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" jedi-vim config
" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0
" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

" neomake config
let g:neomake_python_enabled_makers = ['flake8']
call neomake#configure#automake('w')
