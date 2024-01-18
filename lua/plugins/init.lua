local barbecue = require('plugins.barbecue')
local bufferline = require('plugins.bufferline')
local lualine = require('plugins.lualine')
local nvim_cmp = require("plugins.nvim-cmp")
local nvim_lspconfig = require("plugins.nvim-lspconfig")
local nvim_tree = require('plugins.nvim-tree')
local telescope = require("plugins.telescope")
local tokyonight = require("plugins.tokyonight")
local treesitter = require("plugins.treesitter")
local trouble = require("plugins.trouble")
local web_devicon = require("plugins.web-devicons")
local dashboard_nvim = require('plugins.dashboard-nvim')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
    -- the colorscheme should be available when starting Neovim
    tokyonight,
    web_devicon,
    treesitter,
    { "hrsh7th/cmp-vsnip" },
    { "hrsh7th/vim-vsnip" },
    telescope,
    nvim_lspconfig,
    nvim_cmp,
    trouble,
    barbecue,
    lualine,
    nvim_tree,
    bufferline,
    dashboard_nvim
})
