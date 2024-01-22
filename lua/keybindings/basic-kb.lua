vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = function(mode, lhs, rhs, opt)
    opt = opt or {}
    opt.noremap = opt.noremap or true
    opt.silent = opt.silent or true

    vim.api.nvim_set_keymap(mode, lhs, rhs, opt)
end

map("n", "<leader>sv", ":vsp<CR>", { desc = "split window vertically" })
map("n", "<leader>sh", ":sp<CR>", { desc = "split window horizontally" })
map("n", "<leader>sc", "<C-w>c", { desc = "close current window" })
map("n", "<leader>so", "<C-w>o", { desc = "close other windows" })

-- window navigation
map("n", "<A-h>", "<C-w>h", { desc = "jump to left window" })
map("n", "<A-j>", "<C-w>j", { desc = "jump to down window" })
map("n", "<A-k>", "<C-w>k", { desc = "jump to up window" })
map("n", "<A-l>", "<C-w>l", { desc = "jump to right window" })

-- resize window
map("n", "<C-Left>", ":vertical resize -2<CR>")
map("n", "<C-Right>", ":vertical resize +2<CR>")
map("n", "<C-Down>", ":resize +2<CR>")
map("n", "<C-Up>", ":resize -2<CR>")

-- visual模式下缩进代码
map("v", "<", "<gv")
map("v", ">", ">gv")

-- 上下移动选中文本
map("v", "J", ":move '>+1<CR>gv-gv")
map("v", "K", ":move '<-2<CR>gv-gv")
