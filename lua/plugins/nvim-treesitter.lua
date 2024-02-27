-- https://github.com/nvim-treesitter/nvim-treesitter

return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        -- https://github.com/nvim-treesitter/nvim-treesitter/issues/4250
        require("nvim-treesitter.install").prefer_git = true

        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                -- Frontend
                "html",
                "css",
                "scss",
                "javascript",
                "typescript",
                "tsx",
                "json",
                "json5",
                "jsonc",
                "vue",
                "graphql",
                "svelte",
                "yaml",

                -- language
                "lua",
                "markdown",
                "go",
                "python",
                "rust",

                -- others
                "dockerfile",
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
