-- https://github.com/stevearc/aerial.nvim

local aerial_keybindings = require("keybindings.aerial-kb")

return {
    "stevearc/aerial.nvim",
    opts = {},
    -- Optional dependencies
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("aerial").setup({
            -- optionally use on_attach to set keymaps when aerial has attached to a buffer
            on_attach = function(bufnr)
                -- Jump forwards/backwards with '{' and '}'
                aerial_keybindings.attach_buffer(bufnr)
            end,
        })

        -- You probably also want to set a keymap to toggle aerial
        aerial_keybindings.basic()
    end,
}
