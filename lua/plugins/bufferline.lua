-- https://github.com/akinsho/bufferline.nvim
return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        vim.opt.termguicolors = true

        require("bufferline").setup {
            options = {
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        highlight = "Directory",
                        separator = true -- use a "true" to enable the default, or set your own character
                    }
                }

            }
        }
    end
}
