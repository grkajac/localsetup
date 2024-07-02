set nocompatible              " required
filetype plugin on            " required 
syntax on
set encoding=utf-8
" 
" ----------------------- Vim Plugins ------------------"
" 
call plug#begin('~/.vim/plugged')
" 
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'      
Plug 'powerline/powerline'     
" 
call plug#end()
" 
" ---------------------- Keys mappings -----------------"
map <C-T> :NERDTreeToggle<CR>
