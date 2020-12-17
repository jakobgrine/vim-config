syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number relativenumber
set wrap
set smartcase
set noswapfile
set nobackup
set undofile
set incsearch
set nohlsearch
set viminfo+=n~/.vim/viminfo

colorscheme gruvbox
set background=dark
highlight Normal ctermbg=black

set colorcolumn=80
highlight ColorColumn ctermbg=darkgrey

let mapleader = " "

nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l
nnoremap <leader>v <C-W>v
nnoremap <leader>s <C-W>s
nnoremap <leader>c <C-W>c

nnoremap <silent> <leader>u :UndotreeShow<CR>
nnoremap <silent> <leader>pv :Vexplore<CR>:vertical resize 40<CR>
