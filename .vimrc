call plug#begin('~/.vim/plugged')
Plug 'https://github.com/davidhalter/jedi-vim'
Plug 'https://github.com/Shougo/neocomplete.vim'
call plug#end()

"let g:jedi#completions_command = "<C-N>"

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set backspace=indent,eol,start
set nocompatible
set number
"set autochdir
set showmatch
set showcmd
set ruler
set autoindent

filetype plugin indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
"set expandtab

syntax enable
set t_Co=256
colorscheme desert
"colorscheme molokai
set synmaxcol=256
set background=dark

set shell=bash
