" REMAPS:
let mapleader = ' '

noremap <leader>w :w<cr>
noremap <leader>Q :q<cr>
noremap <leader>q :BD<cr>
noremap <leader>% :source $MYVIMRC<cr>

" Enable spell checking
map <leader>s :setlocal spell! spellang=en_us<CR>

:imap qq <Esc>

" INSERT LINE:
nnoremap <silent><C-p> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-[> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" SPLIT NAV:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" RESIZE WINDOWS:
nnoremap <M-h> :resize -2<CR>
nnoremap <M-j> :resize +2<CR>
nnoremap <M-k> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

" COPY PASTE:
noremap cv "+p
noremap cV o<Esc>"+P
noremap cp "+y
noremap cP "+Y

" TAB BUFFER:
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" BETTER TABBING:
vnoremap < <gv
vnoremap > >gv
