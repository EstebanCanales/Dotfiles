local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    clang = { "cpplint" },
    -- Web dev
    javascript = { "biome" },
    javascriptreact = { "biome" },
    typescript = { "biome" },
    typescriptreact = { "biome" },
    css = { "biome" },
    html = { "prettier" },
    json = { "biome" },
    jsonc = { "biome" },
    astro = { "biome" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options