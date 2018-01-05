
" ---- configuration ---- 
call plug#begin('~/.config/nvim/site/plug')

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

