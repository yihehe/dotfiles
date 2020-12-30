set nocompatible
set backspace=indent,eol,start
set diffopt=filler,iwhite
set showcmd

syntax on

" enable backups
set backup
set backupdir=~/.vim/backup

" centralize swap
set directory=~/.vim/swap

" enable persistent undo
set undofile
set undodir=~/.vim/undo

" use os clipboard
set clipboard=unnamed

" better search
set ignorecase " case insensitive
set incsearch " incremental
set gdefault " global by default
set hlsearch " highlighting

" indents
set autoindent
filetype plugin indent on

" status bar and ruler
set laststatus=2
set ruler

" scroll near edge of screen
set scrolloff=3

" briefly show matching bracket
set showmatch

" enhance cli completion
set wildmenu

" max width 80
set textwidth=80
set colorcolumn=-2

" better block behaviour
set virtualedit=block

" faster drawing
set ttyfast

" enable mouse
set mouse=a

" relative line numbers
set relativenumber

" smaller tabs
set tabstop=4
set expandtab

