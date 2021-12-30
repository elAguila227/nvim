set encoding=UTF-8

set notermguicolors

set nocompatible
filetype plugin on

set hidden
set nobackup
set nowritebackup
set noswapfile
set noerrorbells
set smartindent
set number relativenumber
set smartcase
set ignorecase
set incsearch
set nohlsearch
set showcmd

set pumheight=10
set cursorline
" set showtabline=2

" FOLDS:
set foldmethod=syntax
autocmd BufRead,BufNewFile *.java set foldmethod=marker foldmarker={,}


" COMMENTS:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" FILETYPE ASSOCIATION:
autocmd BufRead,BufNewFile *.ens set filetype=asm

set fillchars+=vert:\|

" FINDING FILES:
set path+=**
set wildmenu

" TABCONFIG:
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab

" SPLITS:
set splitbelow
set splitright

" INSERT MODE:
" vertically center view when entering insert mode
autocmd InsertEnter * norm zz

" MOUSE SUPPORT:
set mouse=a

" EXIT:
set confirm
autocmd BufWritePre * %s/\s+$//e

" AUTO SOURCE init.vim:
autocmd BufWritePost $MYVIMRC source $MYVIMRC
