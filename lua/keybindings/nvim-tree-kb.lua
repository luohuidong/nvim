local M = {}

function M.basic()
    vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>")
end

return M
