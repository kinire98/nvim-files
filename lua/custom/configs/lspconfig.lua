local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require("lspconfig")
local util = require "lspconfig/util"
lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"rust"},
  root_dir = util.root_pattern("Cargo.toml"),
  settings = {
    ['rust_analyzer'] = {
      cargo = {
        allFeatures = true,
      },
    },
  },
})
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
capabilities.textDocument.completion.completionItem.preselectSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = { "documentation", "detail", "additionalTextEdits" }
}
lspconfig.astro.setup{
  capabilities = capabilities
}
lspconfig.ts_ls.setup{}
lspconfig.lemminx.setup{}
lspconfig.jdtls.setup{}
lspconfig.pyright.setup{}
lspconfig.sqls.setup{}










