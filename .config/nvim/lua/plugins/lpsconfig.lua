return {
	'williamboman/mason-lspconfig.nvim',
	{
		'neovim/nvim-lspconfig',
		config = function()
			require("mason-lspconfig").setup({
				ensure_install = {
					"lua_ls",
					"pylsp",
					"emmet_ls",
					"eslint",
					"html",
					"tailwindcss",
					"tsserver",
					"cssls"
				}
			})
		end
	},
}
