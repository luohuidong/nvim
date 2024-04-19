-- https://neovim.io/doc/user/lua-guide.html#lua-guide-autocommands

local autocmd = vim.api.nvim_create_autocmd

vim.cmd([[
    augroup FormatAutogroup
        autocmd!
        autocmd InsertLeave * ++nested w
        autocmd BufWritePost * FormatWrite
    augroup END
]])

autocmd({ "BufRead" }, {
    pattern = "*.md",
    callback = function()
        vim.opt_local.wrap = true
    end,
})
