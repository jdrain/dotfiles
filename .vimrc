" Begin .vimrc
" User specific .vimrc for user jason

" for vundle configuration "
set nocompatible
filetype off

" RUNTIME PATH "
" Edit rtp in this section "
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/nerdtree
set rtp+=~/.vim/bundle/youcompleteme

" initialize Vundle "
call vundle#begin()

" Let Vundle manage Vundle "
Plugin 'VundleVim/Vundle.vim'

" Add different plugins below this line/before Vundle termination "
" Added for nerdtree "
Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/nerdtree'

" terminate Vundle "
call vundle#end()
filetype plugin indent on

" set columns to 80 "
set columns=80

" set wrapmargin to 10 "
set wrapmargin=10

" turn ruler on "
set ruler

" Make backspace behave reasonably "
set backspace=indent,eol,start

" Switch syntax highlighting on "
syntax on

" Show line numbers
set number

" set tabs "
set softtabstop=4

" Allow hidden buffers, don't limit to 1 file per window/split "
set hidden

" End .vimrc "
