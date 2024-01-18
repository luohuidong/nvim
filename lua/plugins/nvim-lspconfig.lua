-- https://github.com/neovim/nvim-lspconfig

local nvm_lspconfig_keybinding = require('lua.keybindings.nvim-lspconfig')

return {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim" },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup {
            ensure_installed = {
                "html", "cssls", "tsserver",
                "tailwindcss", "astro", "volar", "svelte",
                "eslint",
                "graphql", "prismals",
                "jsonls",
                "docker_compose_language_service", "dockerls",
                "lua_ls",
                "marksman",
            }
        }

        nvm_lspconfig_keybinding()
    end
}
