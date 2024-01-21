-- https://github.com/nvim-telescope/telescope.nvim

local M = {}

function M.basic()
    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Lists files in your current working directory" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep,
        { desc = "Search for a string in your current working directory" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Lists open buffers in current neovim instance" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Lists available help tags" })
end

return M
