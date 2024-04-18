local M = {}

function M.basic()
    vim.keymap.set({ "n", "i" }, "<C-s>", "<cmd>w<cr>", { desc = "save" })
end

return M
