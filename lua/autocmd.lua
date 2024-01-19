-- https://neovim.io/doc/user/lua-guide.html#lua-guide-autocommands

local autocmd = vim.api.nvim_create_autocmd

autocmd("TermOpen", {
    command = "startinsert",
})

autocmd({ "InsertLeave", "TextChanged" }, {
    command = "Format",
})

autocmd({ "FocusLost" }, {
    command = "w",
})

autocmd("BufEnter", {
    pattern = { "*.md" },
    callback = function()
        vim.wo.colorcolumn = ""
        vim.o.wrap = true
    end,
})
