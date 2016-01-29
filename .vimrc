" unmap the arrow keys
" no <down> <Nop> 
" no <left> <Nop>
" no <right> <Nop>
" no <up> <Nop>
" ino <down> <Nop>
" ino <left> <Nop>
" ino <right> <Nop>
" ino <up> <Nop>

" set NERDTree to open by default
autocmd vimenter * NERDTree

" color scheme
colo molokai 

" enable syntax highlighting
syntax on

" set line numbers
set relativenumber

" Enable CursorLine
set cursorline

" Default Colors for CursorLine
highlight  CursorLine ctermbg=Green ctermfg=Black

" Change Color when entering Insert Mode
autocmd InsertEnter * highlight  CursorLine ctermbg=White ctermfg=Black

" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * highlight  CursorLine ctermbg=Green ctermfg=Black

" set copy paste from vim
set clipboard=unnamedplus

" set autoindent
set autoindent

" show matching brackets when cursor is over them
set showmatch

" set tabs to 4 spaces
set tabstop=2
set shiftwidth=2
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

" recommended options for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_css_checkers = ['csslint']
let g:syntastic_javascript_checkers = ['jshint'] 
