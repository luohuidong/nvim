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
                "markdown"
            },
            async_install = true,
            highlight = { enable = true },
            sync_install = false,
        })
    end
}
