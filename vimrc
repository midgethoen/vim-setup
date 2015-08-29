scriptencoding utf-8
set encoding=utf-8"

" Midge's .vimrc file
"

"folding
set foldmethod=syntax
set foldlevelstart=1

"let javaScript_fold=1         " JavaScript

" pathogen
execute pathogen#infect()

" Automatically reload .vimrc
autocmd! bufwritepost .vimrc source %

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.
 set pastetoggle=<F2>
 set clipboard+=unnamed

" Mouse and backspace
set mouse=a  " on OSX press ALT and click
"" set bs=2     " make backspace behave like normal again

" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","

""this part enables python-mode...
" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype on 
filetype plugin on
filetype plugin indent on
syntax on

let g:pymode_folding = 0
let g:pymode_lint = 1

" bind Ctrl+<movement> keys to move around the windows, instead of using
" Ctrl+w + <movement>
" " Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" small tab indention
set ts=2

" show line/cursorline numbers by default
set number

set list
set listchars=tab:▸\ ,trail:·
set autoindent
set expandtab
set shiftwidth=2

"allow removing existent characters in insert mode
set backspace=indent,eol,start

"search for tags files in parent directories
set tags=tags;

map ; :
noremap ;; ; 
map  - :E<cr>

" show cursorline in insert mode
au InsertEnter * set cursorline
au InsertLeave * set nocursorline
