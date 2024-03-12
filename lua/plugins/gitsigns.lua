-- https://github.com/lewis6991/gitsigns.nvim

local gitsigns_keybindings = require("keybindings.gitsigns-kb")

return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require("gitsigns").setup({
            on_attach = function(bufnr)
                gitsigns_keybindings.attach_buffer(bufnr)
            end,
        })
    end,
}
