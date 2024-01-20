-- https://neovim.io/doc/user/lua-guide.html#lua-guide-autocommands

vim.cmd([[
    augroup FormatAutogroup
        autocmd!
        autocmd FocusLost * Format
        autocmd User FormatterPost w
    augroup END
]])
