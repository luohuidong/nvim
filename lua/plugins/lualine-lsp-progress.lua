-- https://github.com/arkav/lualine-lsp-progress
return {
    "arkav/lualine-lsp-progress",
    dependencies = { "nvim-lualine/lualine.nvim" },
    config = function()
        require("lualine").setup({
            sections = {
                lualine_c = {
                    "lsp_progress",
                },
            },
        })
    end,
}
