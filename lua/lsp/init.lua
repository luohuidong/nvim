local lua_ls = require('lsp.lua-ls')

local function init()
    -- Set up lspconfig.
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
    local lspconfig = require 'lspconfig'

    local lsps = {
        'html', 'cssls', 'tsserver',
        'tailwindcss', 'astro', 'svelte', 'volar',
        'eslint', 'jsonls',
        'prismals', 'graphql',
        'dockerls',
        'gopls',
        'marksman'
    }
    for _, lsp in ipairs(lsps)
    do
        lspconfig[lsp].setup {
            capabilities = capabilities
        }
    end
end

return {
    init,
    lua_ls,
}
