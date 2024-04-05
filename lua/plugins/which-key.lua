-- https://github.com/folke/which-key.nvim
return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    config = function()
        local wk = require("which-key")
        wk.register({
            ["<leader>f"] = { name = "+file/find" },
            ["<leader>g"] = { name = "+git", h = "+hunks" },
        })
    end,
}
