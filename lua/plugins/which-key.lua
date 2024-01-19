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
            ["<leader>f"] = {
                name = "search",
                f = { "<cmd>Telescope find_files<cr>", "Find File" },
                r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
                n = { "<cmd>enew<cr>", "New File" },
            },
        })
    end,
}
