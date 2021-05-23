source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/vim-plug/plugin-conf.vim
if !empty(glob("$HOME/.cache/wal/"))
    source $HOME/.config/nvim/themes/wal.vim
else
    source $HOME/.config/nvim/themes/onedark.vim
endif
