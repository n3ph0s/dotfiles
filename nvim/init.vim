set clipboard+=unnamedplus

" Disable use of arrow keys for navigation
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" No Swap File
set noswapfile

" Save undo-trees in files
set undofile
set undodir=$HOME/.config/nvim/undo

" Number of undo saved
set undolevels=10000
set undoreload=10000

" set line number and relative line number
set number
set relativenumber

" Use spaces instead of tab
" Copy indent from current line when starting a new line
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
