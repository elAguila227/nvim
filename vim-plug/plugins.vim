" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'PhilRunninger/nerdtree-visual-selection'
    Plug 'Xuyuanp/nerdtree-git-plugin'

    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-repeat'
    Plug 'machakann/vim-highlightedyank'
    Plug 'jiangmiao/auto-pairs'
    Plug 'LukeSmithxyz/vimling'

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'neoclide/coc.nvim', {'brancj': 'release'}
    Plug 'uiiaoo/java-syntax.vim'

    Plug 'dylanaraps/wal.vim'
    Plug 'qpkorr/vim-bufkill'
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
            \ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
            \|  PlugInstall --sync | q
            \| endif
