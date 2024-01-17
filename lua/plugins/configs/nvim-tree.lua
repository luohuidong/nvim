-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
    update_focused_file = {
        enable = true,
    },
})

local status_ok, _ = pcall(vim.cmd, "NvimTreeOpen")
if not status_ok then
    vim.notify("NvimTreeOpen fail!")
    return
end
