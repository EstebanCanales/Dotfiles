return {
"html",
enable = true,
config = function(lspconfig)
	local capabilities = vim.lsp.protocol.make_client_capabilities()
	lspconfig.html.setup({
		capabilities = capabilities,
	})
end
}
