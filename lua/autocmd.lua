-- https://neovim.io/doc/user/lua-guide.html#lua-guide-autocommands

local autocmd = vim.api.nvim_create_autocmd

vim.cmd([[
    augroup FormatAutogroup
        autocmd!
        autocmd InsertLeave * Format
        autocmd User FormatterPost w
    augroup END
]])

autocmd({ "BufRead" }, {
    pattern = "*.md",
    callback = function()
        vim.opt_local.wrap = true
    end,
})
