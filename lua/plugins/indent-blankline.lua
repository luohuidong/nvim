return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    config = function()
        require("ibl").setup({
            exclude = {
                filetypes = {
                    "null-ls-info",
                    "dashboard",
                    "packer",
                    "terminal",
                    "help",
                    "log",
                    "markdown",
                    "TelescopePrompt",
                    "lspinfo",
                    "mason.nvim",
                    "toggleterm",
                    "lspsagaoutline",
                    "text",
                },
            },
        })
    end
}
