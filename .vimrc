" color scheme
colo darkZ_modified

" enable syntax highlighting
syntax on

" Default Colors for CursorLine
highlight  CursorLine ctermbg=DarkGray ctermfg=White
" Change Color when entering Insert Mode
autocmd InsertEnter * highlight  CursorLine ctermbg=Magenta ctermfg=White
" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * highlight  CursorLine ctermbg=DarkGray ctermfg=Black

" set line numbers
set number

" Enable CursorLine
set cursorline

" auto center the screen
set scrolloff=100

" set copy paste from vim
set clipboard=unnamedplus

" set autoindent
set autoindent

" show matching brackets when cursor is over them
set showmatch

" set tabs to 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" set case insensitive search
set ignorecase
set smartcase

" set highlight search results
set hlsearch

" prevent cursor from going to first character of a line when moving
" set startofline

" set ruler
set ruler

" set status line
set laststatus=2

" save folding
au BufWinLeave * mkview
au BufWinEnter * silent loadview

" remove trailing whitespace on save
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" set pathogen
execute pathogen#infect()
filetype plugin indent on

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
