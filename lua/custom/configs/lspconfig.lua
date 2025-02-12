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
      checkOnSave = {
        command = "clippy"
      }
    },
  },
})
lspconfig.astro.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "astro" }
}
lspconfig.ts_ls.setup{}
lspconfig.lemminx.setup{}
lspconfig.jdtls.setup{}
lspconfig.pyright.setup{}
lspconfig.sqls.setup{}
lspconfig.vuels.setup{
}










