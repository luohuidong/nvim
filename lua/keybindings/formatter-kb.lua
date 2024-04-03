local M = {}

function M.basic()
    vim.keymap.set({ "n", "i" }, "<C-s>", "<cmd>w<cr>", { desc = "Format and save code" })
end

return M
