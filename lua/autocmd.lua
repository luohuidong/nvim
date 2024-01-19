local myAutoGroup = vim.api.nvim_create_augroup("myAutoGroup", {
    clear = true,
})

local autocmd = vim.api.nvim_create_autocmd

autocmd("TermOpen", {
    group = myAutoGroup,
    command = "startinsert",
})

autocmd({ "InsertLeave", "TextChanged" }, {
    group = myAutoGroup,
    pattern = { "*" },
    command = "silent! wall",
})

autocmd("BufWritePre", {
    group = myAutoGroup,
    pattern = {
        "*.html", "*.css", "*.js", "*.jsx", "*.ts", "*.tsx", "*.vue", "*.json",
        "*.md", "*.lua",
    },
    command = "Format",
})

autocmd("BufEnter", {
    pattern = { "*.md" },
    group = myAutoGroup,
    callback = function()
        vim.wo.colorcolumn = ""
        vim.o.wrap = true
    end,
})
