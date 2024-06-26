return {
	"lua_ls",          -- nombre
	function(lspconfig) -- el parametro de config
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		lspconfig.lua_ls.setup {
			on_init = function(client)
				local path = client.workspace_folders[1].name
				if vim.loop.fs_stat(path .. '/.luarc.json') or vim.loop.fs_stat(path .. '/.luarc.jsonc') then
					return
				end

				client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
					runtime = {
						-- Tell the language server which version of Lua you're using
						-- (most likely LuaJIT in the case of Neovim)
						version = 'LuaJIT'
					},
					-- Make the server aware of Neovim runtime files
					workspace = {
						checkThirdParty = false,
						library = {
							vim.env.VIMRUNTIME,
							vim.api.nvim_get_runtime_file("", true)
						}
					}
				})
			end,
			settings = {
				Lua = {}
			}
		}
	end

}
