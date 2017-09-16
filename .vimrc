set nocompatible              " required
filetype off                  " required
set encoding=utf-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

"Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" enable syntax highlighting
syntax enable
"
" " show line numbers
set number
"
" " set tabs to have 4 spaces
set ts=4
"
" " indent when moving to the next line while writing code
set autoindent
"
" " expand tabs into spaces
set expandtab
"
" " when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4
"
" " show a visual line under the cursor's current line
" set cursorline
"
" " show the matching part of the pair for [] {} and ()
set showmatch
"
" " spliting windows natural way
set splitbelow
set splitright
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"
" " Enable folding
set foldmethod=indent
set foldlevel=99
"
" " enable all Python syntax highlighting features
let python_highlight_all = 1
map <F9> :w<CR>:!python %<CR>
"
" " NerdTree default arrow symbols
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"
" ctrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
