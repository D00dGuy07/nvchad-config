require("nvchad.configs.lspconfig").defaults()
require("mason-lspconfig").setup({
    ensure_installed = { "basedpyright" },
})

local servers = { "html", "cssls", "clangd", "basedpyright" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
