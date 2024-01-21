vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap

local function set_opt(opt)
    opt = opt or {}
    opt.noremap = opt.noremap or true
    opt.silent = opt.silent or true
    return opt
end

map("n", "s", "", set_opt())
map("n", "sv", ":vsp<CR>", set_opt({ desc = "split window vertically" }))
map("n", "sh", ":sp<CR>", set_opt({ desc = "split window horizontally" }))
map("n", "sc", "<C-w>c", set_opt({ desc = "close current window" }))
map("n", "so", "<C-w>o", set_opt({ desc = "close other windows" }))

-- window navigation
map("n", "<A-h>", "<C-w>h", set_opt({ desc = "jump to left window" }))
map("n", "<A-j>", "<C-w>j", set_opt({ desc = "jump to down window" }))
map("n", "<A-k>", "<C-w>k", set_opt({ desc = "jump to up window" }))
map("n", "<A-l>", "<C-w>l", set_opt({ desc = "jump to right window" }))

-- resize window
map("n", "<C-Left>", ":vertical resize -2<CR>", set_opt())
map("n", "<C-Right>", ":vertical resize +2<CR>", set_opt())
map("n", "<C-Down>", ":resize +2<CR>", set_opt())
map("n", "<C-Up>", ":resize -2<CR>", set_opt())
-- 等比例
map("n", "s=", "<C-w>=", set_opt())

-- visual模式下缩进代码
map("v", "<", "<gv", set_opt())
map("v", ">", ">gv", set_opt())

-- 上下移动选中文本
map("v", "J", ":move '>+1<CR>gv-gv", set_opt())
map("v", "K", ":move '<-2<CR>gv-gv", set_opt())
