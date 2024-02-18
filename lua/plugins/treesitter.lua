-- https://github.com/nvim-treesitter/nvim-treesitter

return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
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

                "lua",
                "dockerfile",
                "markdown",
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
