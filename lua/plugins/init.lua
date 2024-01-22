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
    require("plugins.tokyonight"),
    require("plugins.web-devicons"),
    require("plugins.treesitter"),
    require("plugins.telescope"),
    require("plugins.nvim-lspconfig"),
    require("plugins.nvim-cmp"),
    require("plugins.trouble"),
    require("plugins.barbecue"),
    require("plugins.lualine"),
    require("plugins.nvim-tree"),
    require("plugins.bufferline"),
    require("plugins.dashboard-nvim"),
    require("plugins.formatter"),
    require("plugins.aerial"),
    require("plugins.nvim-autopairs"),
    require("plugins.lualine-lsp-progress"),
    require("plugins.gitsigns"),
    require("plugins.indent-blankline"),
    require("plugins.nvim-colorizer"),
    require("plugins.which-key"),
    require("plugins.comment"),
    require("plugins.copilot"),
    require("plugins.toggleterm"),
    require("plugins.leap"),
})
