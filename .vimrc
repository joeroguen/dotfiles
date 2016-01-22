" unmap the arrow keys
no <down> <Nop> 
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

" color scheme
colo molokai 

" enable syntax highlighting
syntax on

" set line numbers
set relativenumber

" set copy paste from vim
set clipboard=unnamedplus

" set autoindent
set autoindent

" show matching brackets when cursor is over them
" set showmatch

" set tabs to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" set pathogen
execute pathogen#infect()
filetype plugin indent on

" set case insensitive search
set ignorecase
set smartcase

" set highlight search results
set hlsearch

" prevent cursor from going to first character of a line when moving
set nostartofline

" set ruler
set ruler

" set status line
set laststatus=2

" needed for installed plugins to work
filetype plugin on
