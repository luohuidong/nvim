-- https://github.com/neovim/nvim-lspconfig

local nvm_lspconfig_keybinding = require("keybindings.nvim-lspconfig-kb")

return {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim" },
    config = function()
        require("mason").setup()

        -- install language servers
        require("mason-lspconfig").setup({
            ensure_installed = {
                -- frontend
                "html",
                "cssls",
                "tsserver",
                "tailwindcss",
                "astro",
                "volar",
                "svelte",
                "eslint",
                "graphql",
                "prismals",
                "jsonls",

                -- docker
                "docker_compose_language_service",
                "dockerls",

                -- language
                "lua_ls", -- lua
                "gopls", -- go
                "marksman", -- markdown
                "rust_analyzer", -- rust
                "pyright", -- python
            },
        })

        -- install formatters, linters, and other tools
        -- https://github.com/williamboman/mason-lspconfig.nvim/issues/113
        local registry = require("mason-registry")
        local others = {
            -- fontend
            "prettier",
            "stylelint",

            -- lua
            "stylua",

            -- go
            "go-debug-adapter",
            "goimports",

            -- sql
            "sqlfluff",
        }
        for _, pkg_name in ipairs(others) do
            local ok, pkg = pcall(registry.get_package, pkg_name)
            if ok then
                if not pkg:is_installed() then
                    pkg:install()
                end
            end
        end

        nvm_lspconfig_keybinding.basic()
    end,
}
