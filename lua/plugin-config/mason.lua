require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = {
    "html",
    "cssls",
    "tailwindcss",
    "tsserver",
    "graphql",
    "volar",
    "astro",
    "prismals",
    "svelte",
    "eslint",
    "jsonls",

    "docker_compose_language_service",
    "dockerls",
    "lua_ls",
    "gopls",
    "marksman",
  }
}
