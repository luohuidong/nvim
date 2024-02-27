-- https://neovim.io/doc/user/lua-guide.html#lua-guide-autocommands

vim.cmd([[
    augroup FormatAutogroup
        autocmd!
        autocmd FocusLost,BufLeave * Format
        autocmd User FormatterPost w
    augroup END
]])

vim.api.nvim_create_autocmd({ "BufRead" }, {
    pattern = "*.md",
    callback = function()
        vim.opt_local.wrap = true
    end,
})
