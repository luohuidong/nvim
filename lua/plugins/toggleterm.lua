-- https://github.com/akinsho/toggleterm.nvim

return {
    "akinsho/toggleterm.nvim",
    config = function()
        require("toggleterm").setup({
            open_mapping = [[<c-\>]],
            insert_mappings = true,
        })
        require("keybindings.toggleterm-kb").window_mapping()
        require("keybindings.toggleterm-kb").lazygit_toggle()
    end,
}
