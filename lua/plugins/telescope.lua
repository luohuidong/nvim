-- https://github.com/nvim-telescope/telescope.nvim

local telescope_keybindings = require('keybindings.telescope-kb')

return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-fzf-native.nvim',
        'nvim-telescope/telescope-project.nvim'
    },
    config = function()
        local telescope = require('telescope')
        telescope.load_extension('project')

        telescope_keybindings.basic()
    end
}
