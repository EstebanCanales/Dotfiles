return {
"tailwindcss",
config = function(lspconfig)
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    lspconfig.tailwindcss.setup({
      capabilities = capabilities,
    })
  end
}
