
" ---- plugins ----
call plug#begin('~/.config/nvim/site/plug')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
" Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree.git'
Plug 'jiangmiao/auto-pairs'
Plug 'fatih/vim-go'
Plug 'google/vim-jsonnet'
Plug 'scrooloose/nerdtree'
Plug 'zchee/nvim-go', { 'do': 'make'}

call plug#end()
" ---- Initialize plugins ----
" Enable deoplete on startup
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_on_insert_enter = 1
let g:deoplete#enable_refresh_always = 0
let g:deoplete#auto_complete_delay = 50
" ---- vim configuration ---- 
filetype plugin indent on    " required

syntax on 
filetype plugin indent on
set tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab

" NERDTree toggle key
map <C-n> :NERDTreeToggle<CR>
" minimize windows
map <C-m> <C-W>_   
" Navigation keys
map <C-j> <C-w>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h

" Code folding
set foldmethod=syntax
set foldlevel=6 " resonable default fold level 

" setup custom indent by filetype
autocmd Filetype json setlocal ts=2 sts=2 sw=2

" nvim-go variables
let g:go#debug = 1
