" filetype plugin indent on
filetype off
set nocompatible
set modelines=0
set number
set ruler
set visualbell
set encoding=utf-8
set wrap!
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set smarttab
syntax on

set whichwrap+=<,>,h,l,[,]

set mouse=a

inoremap <CR> <CR><Space><BS>

" Mode Settings

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

" Tab Navigation
nnoremap <C-j>	:tabprevious<CR>
nnoremap <C-l>	:tabnext<CR>
nnoremap <C-t>	:tabnew<CR>
nnoremap <A-u>  :u<CR>

inoremap <C-j>	<Esc>:tabprevious<CR>i
inoremap <C-l>	<Esc>:tabnext<CR>i
inoremap <C-t>	<Esc>:tabnew<CR>i
inoremap <A-u>  <Esc>:u<CR>i

" set background=dark
