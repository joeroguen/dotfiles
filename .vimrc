" color scheme
colo darkZ_modified

" enable syntax highlighting
syntax on

" Default Colors for CursorLine in the terminal
highlight  CursorLine ctermbg=NONE
" Change Color when entering Insert Mode
autocmd InsertEnter * highlight  CursorLine ctermbg=Magenta ctermfg=White
" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * highlight  CursorLine ctermbg=NONE

" Default Colors for CursorLine in MacVim gui
highlight  CursorLine guibg=NONE
" Change Color when entering Insert Mode
autocmd InsertEnter * highlight  CursorLine guibg=Magenta guifg=White
" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * highlight  CursorLine guibg=NONE

" set line numbers
set number

" Enable CursorLine
set cursorline

" auto center the screen
set scrolloff=100

" set copy paste from vim
set clipboard=unnamed

" set autoindent
" set autoindent
" set smartindent
filetype indent on

" show matching brackets when cursor is over them
set showmatch

" set tabs to 2 spaces
" set tabstop=2
" set shiftwidth=2
" set expandtab
set expandtab
set shiftwidth=2
set softtabstop=2

" set case insensitive search
set ignorecase
set smartcase

" set highlight search results
set hlsearch

" set incremental search
set incsearch

" prevent cursor from going to first character of a line when moving
" set startofline

" set ruler
set ruler

" set status line
set laststatus=2

" remap leader key
"let mapleader= ","
let mapleader= " "

" keymaps
inoremap ` <C-N>
inoremap ~ <C-P>
noremap g gg
noremap gg <S-G>
noremap [ <C-U>
noremap ] <C-D>
"noremap <Space> .
noremap $ 0
noremap 0 $

autocmd BufWinLeave *.* mkview!
autocmd BufWinEnter *.* silent loadview

" remove trailing whitespace on save
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" save vCoolor hex colors as lowercase
let g:vcoolor_lowercase = 1

" needed for installed plugins to work
filetype plugin on

" set pathogen
execute pathogen#infect()
filetype plugin indent on

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
