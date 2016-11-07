colo Benokai " color scheme
let g:rehash256 = 1
set guifont=Menlo:h12 " set font size
set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
syntax on " enable syntax highlighting
highlight iCursor guifg=Red guibg=Red
set guicursor=i:ver50-iCursor
set cursorline
highlight CursorLine guibg=NONE
" autocmd InsertEnter * highlight  CursorLine guibg=Magenta guifg=White
autocmd InsertEnter * highlight  CursorLine guibg=Black
autocmd InsertLeave * highlight  CursorLine guibg=NONE

set foldcolumn=4 " set foldmethod indent
augroup vimrc
  au BufReadPre * setlocal foldmethod=indent
augroup END

set scrolloff=100 " auto center the screen

set clipboard=unnamed " set copy paste from vim

set autoindent
" set smartindent
filetype indent on

set showmatch " show matching brackets when cursor is over them

" set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2

set ignorecase " set case insensitive search
set smartcase
set hlsearch " set highlight search results
set incsearch " set incremental search

set relativenumber
set number
set ruler
set laststatus=2 " set status line
set linespace=10

if version >= 700
  au InsertEnter * hi StatusLine guifg=Black guibg=Red
  au InsertLeave * hi StatusLine guifg=Black guibg=White
endif

let mapleader= " "

nmap f <Plug>(easymotion-s)
let g:EasyMotion_smartcase = 1

" inoremap ` <C-N>
inoremap dd <C-X><C-K>
inoremap ff <C-N>
inoremap gg <C-X><C-O>
inoremap vv <Esc>
vnoremap vv <Esc>
cnoremap vv <Esc>
xnoremap vv <Esc>
snoremap vv <Esc>
onoremap vv <Esc>
" noremap [ <C-U>
" noremap ] <C-D>
" noremap g gg
" noremap gg G
noremap M <C-U>
noremap m <C-D>
noremap ! m
noremap $ 0
noremap 0 $
" noremap \ .
noremap \ /
" noremap <Leader>s /
noremap , .
" noremap \ <S-Tab>
" noremap <S-\> <S-Tab>
" noremap <Leader>r .
" noremap <Tab> >>
" vnoremap <Tab> >>
" xnoremap <Tab> >>
" inoremap <S-Tab> <C-D>
" noremap <S-Tab> <<
" vnoremap <S-Tab> <<
" xnoremap <S-Tab> <<

" Quicker window movement
noremap <Leader>j <C-w>j
noremap <Leader>k <C-w>k
noremap <Leader>h <C-w>h
noremap <Leader>l <C-w>l

" splits lines in normal mode using ctrl+j
noremap <NL> i<CR><ESC>

" tabbar plugin
nmap <Leader><Tab> :TagbarToggle<CR>

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

filetype plugin on " needed for installed plugins to work


execute pathogen#infect()
filetype plugin indent on

set statusline+=%{SyntasticStatuslineFlag()} " recommended options for syntastic
set statusline+=%*
" set statusline+=%#warningmsg#
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_css_checkers = ['csslint']
let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_php_checkers = ['eslint']
