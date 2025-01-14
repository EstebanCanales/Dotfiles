local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "gofumpt" },
    java = { "google-java-format" },
    kotlin = { "ktlint" },

    clang = { "cpplint" },
    -- Web dev
    javascript = { "biome" },
    javascriptreact = { "biome" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
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
