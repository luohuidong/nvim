-- https://github.com/nvim-tree/nvim-tree.lua
return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        -- set termguicolors to enable highlight groups
        vim.opt.termguicolors = true

        -- OR setup with some options
        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 40,
            },
            renderer = {
                group_empty = true,
            },
            update_focused_file = {
                enable = true,
            },
        })
    end,
}
