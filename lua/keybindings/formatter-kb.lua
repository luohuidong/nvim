local M = {}

function M.basic()
    vim.keymap.set({ "n", "i" }, "<C-s>", "<cmd>Format<cr>")
end

return M
