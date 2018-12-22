
" ---- plugins ----
call plug#begin('~/.config/nvim/site/plug')
Plug 'fatih/vim-go'
Plug 'm-kat/aws-vim'
Plug 'google/vim-jsonnet'
Plug 'jiangmiao/auto-pairs'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdtree.git'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'tpope/vim-surround'
"Plug 'zchee/nvim-go', { 'do': 'make'}

if has('nvim')
  Plug 'Shougo/deoplete.nvim'
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
Plug 'zchee/deoplete-go', { 'do': 'make'}
call plug#end()

" ---- Initialize plugins ----
" Enable deoplete on startup
let g:deoplete#auto_complete_delay = 50
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_on_insert_enter = 1
let g:deoplete#enable_refresh_always = 0
let g:deoplete#enable_smart_case = 1
if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {}
endif

" --- disable deoplete when using vim-multiple-cursors. ---
function g:Multiple_cursors_before()
  call deoplete#custom#buffer_option('auto_complete', v:false)
endfunction
function g:Multiple_cursors_after()
  call deoplete#custom#buffer_option('auto_complete', v:true)
endfunction


" Disable the candidates in Comment/String syntaxes.
call deoplete#custom#source('_', 'disabled_syntaxes', ['Comment', 'String'])

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" set sources
let g:deoplete#sources#go#gocode_binary = '/Users/tony/Project/Go/bin/gocode'
let g:deoplete#sources#go#package_dot = 1
let g:deoplete#sources#go#pointer = 1
let g:deoplete#sources = {}
let g:deoplete#sources.c = ['LanguageClient']
let g:deoplete#sources.cpp = ['LanguageClient']
let g:deoplete#sources.python = ['LanguageClient']
let g:deoplete#sources.python3 = ['LanguageClient']
let g:deoplete#sources.rust = ['LanguageClient']
let g:deoplete#sources.vim = ['vim']

" --- allow alpine linux neivim v0.3.1r to use vim-go ---
let g:go_version_warning = 0

" ---- vim configuration ---- 
syntax on 
filetype plugin indent on    " required
set tabstop=8 shiftwidth=2 softtabstop=2 expandtab

" NERDTree toggle key
map <C-n> :NERDTreeToggle<CR>

" minimize windows
map <C-m> <C-W>_   
" Navigation keys
map <C-H> <C-W>h
map <C-j> <C-w>j
map <C-K> <C-W>k
map <C-L> <C-W>l

" depoplete tab-completion
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Code folding
set foldmethod=syntax
set foldlevel=6 " resonable default fold level 

" setup custom indent by filetype
autocmd Filetype json setlocal ts=2 sts=2 sw=2

" nvim-go variables
let g:go#debug = 1

" deoplete tab-completion
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" nvim-go variables
let g:go#debug = 1

" deoplete tab-completion
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
