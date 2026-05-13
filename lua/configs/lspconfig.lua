require("nvchad.configs.lspconfig").defaults()
require("mason-lspconfig").setup({
    ensure_installed = { "basedpyright" },
})

vim.lsp.config("basedpyright", {
  settings = {
    basedpyright = {
      analysis = {
        diagnosticSeverityOverrides = {
          reportUnusedImport = "warning"
        },
        inlayHints = {
          callArgumentNames = true,
          variableTypes = true
        },
      },
    },
  },
})

vim.lsp.inlay_hint.enable(true)

local servers = { "html", "cssls", "clangd", "basedpyright" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
