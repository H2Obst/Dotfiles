" plugins
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale'
call plug#end()

let mapleader = ","

" syntax highlighting
syntax enable
colorscheme default

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
map <C-o> :NERDTreeToggle<CR>

nmap <leader>r :NERDTreeFocus<cr>R<c-w><c-p>

" ale linter configs
let g:ale_linters_explicit=1
let g:ale_lint_on_text_changed='never'
let g:ale_lint_on_insert_leave=0
let g:ale_lint_on_enter=0
let g:ale_linters={
\ 'javascript':['eslint'],
\}
