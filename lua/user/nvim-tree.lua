-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
-- vim.g.nvim_tree_icons = {
--     default = "",
--     symlink = "",
--     git = {
--         unstaged = "",
--         staged = "S",
--         unmerged = "",
--         renamed = "➜",
--         deleted = "",
--         untracked = "U",
--         ignored = "◌",
--     },
--     folder = {
--         default = "",
--         open = "",
--         empty = "",
--         empty_open = "",
--         symlink = "",
--     },
-- }

local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
    return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
    return
end

local tree_cb = nvim_tree_config.nvim_tree_callback
-- Replaces auto_close
vim.api.nvim_create_autocmd("BufEnter", {
    nested = true,
    callback = function()
        if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
            vim.cmd "quit"
        end
    end
})


nvim_tree.setup {
    renderer = {
        icons = {
            glyphs = {
                default = "",
                symlink = "",
                git = {
                    unstaged = "",
                    staged = "S",
                    unmerged = "",
                    renamed = "➜",
                    deleted = "",
                    untracked = "U",
                    ignored = "◌",
                },
                folder = {
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                },
            },
        },
    },
    disable_netrw = true,
    hijack_netrw = true,
    open_on_setup = false,
    ignore_ft_on_setup = {
        "startify",
        "dashboard",
        "alpha",
    },
    -- auto_close = true,
    open_on_tab = true,
    hijack_cursor = true,
    update_cwd = true,
    -- update_to_buf_dir = {
    --     enable = true,
    --     auto_open = true,
    -- },
    diagnostics = {
        enable = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },
    },
    update_focused_file = {
        enable = true,
        update_cwd = true,
        ignore_list = {},
    },
    system_open = {
        cmd = nil,
        args = {},
    },
    filters = {
        dotfiles = false,
        custom = {},
    },
    git = {
        enable = true,
        ignore = true,
        timeout = 500,
    },
    view = {
        width = 30,
        height = 30,
        hide_root_folder = false,
        side = "left",
        -- auto_resize = true,
        mappings = {
            custom_only = false,
            list = {
            { key = { "<CR>", "o" }, action = "edit" },
            { key = "O", action = "preview" },
            { key = "t", action = "tabnew" },
            { key = "i", action = "toggle_file_info" },
            { key = "v", action = "vsplit" },
            { key = "s", action = "split" },
            { key = "cd", action = "cd" },
            },
        },
        number = false,
        relativenumber = false,
    },
    trash = {
        cmd = "trash",
        require_confirm = true,
    },
    -- quit_on_open = 0,
    -- git_hl = 1,
    -- disable_window_picker = 0,
    -- root_folder_modifier = ":t",
    -- show_icons = {
    --     git = 1,
    --     folders = 1,
    --     files = 1,
    --     folder_arrows = 1,
    --     tree_width = 30,
    -- },
    actions = {
        open_file = {
            -- quit_on_open = true,
            window_picker = {
                enable = false,
            },
        },
    },
}
vim.cmd [[hi NvimTreeStatusLine cterm=NONE gui=NONE ]]
