-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local servers = {
  "html",
  "cssls",
  "arduino_language_server",
  "clangd",
  "ts_ls",
  "rust_analyzer",
  "angularls",
  "astro",
  "cssmodules_ls",
  "tailwindcss",
  "vuels",
  "emmet_ls",
  "pylsp",
}

local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end