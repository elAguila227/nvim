local options = {
    fileencoding = "utf-8",
    -- clipboard = "unnamedplus",

    hidden = true,
    backup = false,
    writebackup = false,
    swapfile = false,
    errorbells = false,

    number = true,
    relativenumber = true,

    smartindent = true,

    ignorecase = true,
    smartcase = true,
    incsearch = true,
    hlsearch = true,

    wrap = false,
    scrolloff = 4,
    sidescrolloff = 8,

    showcmd = true,
    showmode = false,

    pumheight = 10,
    updatetime = 300,

    cursorline = true,
    termguicolors = true,

    confirm = true,

    -- FOLDS
    foldmethod = "syntax",
    foldenable = false,

    -- TABCONFIG
    tabstop = 4,
    shiftwidth = 4,
    expandtab = true,

    -- SPLITS
    splitbelow = true,
    splitright = true,

    -- MOUSE SUPPORT
    mouse = "a",
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.opt.iskeyword:append "-"

vim.cmd [[au TextYankPost * silent! lua vim.highlight.on_yank()]]               -- highlight yanked text

vim.cmd [[au BufRead,BufNewFile *.java set foldmethod=marker foldmarker={,}]]   -- better folds for java
vim.cmd [[au BufEnter * setlocal formatoptions-=cro]]                           -- no auto comment on writing
vim.cmd [[au BufRead,BufNewFile *.ens set filetype=asm]]                        -- better syntax on ens files
vim.cmd [[au BufWritePre * %s/\s\+$//e]]                                        -- remove trailing spaces

vim.cmd [[au Filetype rmd map <leader><leader>r :!Rscript -e "rmarkdown::render('%')"<CR>]]                                        -- remove trailing spaces

-- vim.cmd [[autocmd InsertEnter * norm zz]]                                       -- centers cursor on screen when writing
