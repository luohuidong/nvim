require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = {
    "html",
    "cssls",
    -- "stylelint",
    "tailwindcss",
    "tsserver",
    -- "js-debug-adapter",
    "graphql",
    "volar",
    "astro",
    "prismals",
    "svelte",
    "eslint",
    -- "prettier",
    "jsonls",

    "docker_compose_language_service",
    "dockerls",
    "lua_ls",
    "gopls",
    "marksman",
  }
}
