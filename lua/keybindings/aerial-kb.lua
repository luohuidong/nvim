local M = {}

M.basic = function()
    -- You probably also want to set a keymap to toggle aerial
    vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
end

-- optionally use on_attach to set keymaps when aerial has attached to a buffer
M.attach_buffer = function(bufnr)
    -- Jump forwards/backwards with '{' and '}'
    vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr, desc = "Jump to previous symbol" })
    vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr, desc = "Jump to next symbol" })
end

return M
