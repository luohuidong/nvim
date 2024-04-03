local M = {}

function M.basic()
    vim.keymap.set({ "n", "i" }, "<C-s>", "<cmd>FormatWrite<cr>", { desc = "Format and save code" })
end

return M
