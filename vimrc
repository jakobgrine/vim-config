"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
set history=500

filetype plugin on
filetype indent on

" Set leader for key chords
let mapleader = ","

" Shortcut for saving
nmap <leader>w :w!<CR>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % >/dev/null' <bar> edit!

" Return to last edit position when reopening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Disable highlight when <leader><CR> is pressed
map <silent> <leader>s :noh<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Relative line nubmers
set number relativenumber

" Enable wild menu
set wildmenu

" A buffer becomes hidden instead of closed when it is abandoned
set hidden

" Ignore case when searching
set ignorecase smartcase
" Highlight search results
set hlsearch
" Move the cursor to search results while typing
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" No bells
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Hide toolbar, scrollbar and menubar in gvim
set guioptions-=m
set guioptions-=T
set guioptions-=r

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set font in gvim
set guifont=Consolas:h11
" Enable syntax highlighting
syntax enable

" Set color scheme
try
	colorscheme gruvbox
catch
endtry

" Use dark scheme variant
set background=dark
" Make background black instead of grey
highlight Normal ctermbg=black guibg=black

" Set UTF-8 as standard encoding
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn off backup
set nobackup
set nowb
set noswapfile

let runtimedir=split(&runtimepath, ",")[0]

" Persistent undo
if !isdirectory(runtimedir)
    call mkdir(runtimedir, "", 0770)
endif
if !isdirectory(runtimedir."/undodir")
    call mkdir(runtimedir."/undodir", "", 0700)
endif
let &undodir=runtimedir."/undodir"
set undofile

" Move viminfo file out of home directory
set viminfo+=n~/.vim/viminfo

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab
set smarttab

" Use 4 spaces
set shiftwidth=4
set tabstop=4

set autoindent
set smartindent

" Wrap lines
set wrap

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" No banner in netrw
let g:netrw_banner=0

" Show the undotree (mbbill/undotree)
nnoremap <silent> <leader>u :UndotreeShow<CR>

" Start FZF (junegunn/fzf)
nnoremap <C-P> :FZF<CR>

" Make vim-latex compile to pdf by default
let g:Tex_DefaultTargetFormat='pdf'
