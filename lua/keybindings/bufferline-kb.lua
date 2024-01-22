local M = {}

function M.basic()
    local map = vim.api.nvim_set_keymap

    local function set_opt(opt)
        opt = opt or {}
        opt.noremap = opt.noremap or true
        opt.silent = opt.silent or true
        return opt
    end

    -- bufferline
    map("n", "<C-h>", ":BufferLineCyclePrev<CR>", set_opt({ desc = "go to previous buffer" }))
    map("n", "<C-l>", ":BufferLineCycleNext<CR>", set_opt({ desc = "go to next buffer" }))
end

return M
