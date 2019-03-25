" Vundle for vimrc by (evanxmk)
set nocompatible              " be iMproved, required
set runtimepath+=~/.vim/bundle/YouCompleteMe
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " Gecko includes a .ycm_extra_conf.py file in the root directory.
" " Update this glob path to your Gecko source code location.
let g:ycm_extra_conf_globlist = ['~/dev/gecko/*']
"
" " This is less secure, but this option will load any ycm config
" " file found without a confirmation.
" " let g:ycm_confirm_extra_conf = 0 
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
Plugin 'Valloric/YouCompleteMe'
"
Plugin 'terryma/vim-multiple-cursors'
"
Plugin 'scrooloose/nerdtree'
"
Plugin 'itchyny/lightline.vim'
"
Plugin 'mattn/emmet-vim'
"
Plugin 'chriskempson/base16-vim'
"
Plugin 'w0rp/ale'
let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'javascript': ['eslint'],
\}
Plugin 'townk/vim-autoclose'
" Autoclose curly braces
"Plugin 'dracula/vim'
" " End configuration, makes the plugins available
call vundle#end()
"
" Overriding vim's autodetection
if $COLORTERM == 'gnome-terminal'
     set t_Co=256
endif

" " Powerline theme config
let g:lightline = {
\ 'colorscheme': 'landscape',
\ }
 
" This is for python.vim for better syntax highlighting
let python_highlight_all = 1

" this is for booting nerdtree on startup
" autocmd vimenter * NERDTree
:let g:NERDTreeWinSize=20


" Powerline in vim config
set laststatus=2

""this is my current vim configuration
syntax on
colorscheme base16-atelier-cave-light
" colorscheme base16-github
hi Normal guibg=NONE ctermbg=NONE
set background=dark
set t_Co=256
set termguicolors
filetype plugin indent on 
set tabstop=4
set shiftwidth=5
set expandtab
set ai
set number
set hlsearch
set ruler

