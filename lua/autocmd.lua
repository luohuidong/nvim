-- https://neovim.io/doc/user/lua-guide.html#lua-guide-autocommands

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augroup("__formatter__", { clear = true })

-- auto save on focus lost or buffer leave or insert leave or text changed
autocmd({ "InsertLeave" }, {
    group = "__formatter__",
    command = ":FormatWrite",
})

autocmd("BufWritePost", {
    group = "__formatter__",
    command = ":FormatWrite",
})

autocmd({ "BufRead" }, {
    pattern = "*.md",
    callback = function()
        vim.opt_local.wrap = true
    end,
})
