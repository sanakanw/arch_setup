set nocompatible            " disable compatibility to old-time vi
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set tabstop=2               " number of columns occupied by a tab 
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim

nnoremap <C-j>	:tabprevious<CR>
nnoremap <C-l>	:tabnext<CR>
nnoremap <C-t>	:tabnew<CR>
nnoremap <A-u>  :u<CR>

inoremap <C-j>	<Esc>:tabprevious<CR>i
inoremap <C-l>	<Esc>:tabnext<CR>i
inoremap <C-t>	<Esc>:tabnew<CR>i
inoremap <A-u>  <Esc>:u<CR>i

nnoremap <C-Left> <C-w>h
nnoremap <C-Right> <C-w>l

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>

set whichwrap+=<,>,[,]

call plug#begin()
Plug 'AlphaTechnolog/pywal.nvim', { 'as': 'pywal' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
call plug#end()

colorscheme pywal
