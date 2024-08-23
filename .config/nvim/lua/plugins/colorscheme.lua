return {
	--'olivercederborg/poimandres.nvim',
	--lazy = false,
	--priority = 1000,
	--
	--config = function()
	--	require('poimandres').setup {
	--		bold_vert_split = false, -- use bold vertical separators
	--    dim_nc_background = false, -- dim 'non-current' window backgrounds
	--    disable_background = true, -- disable background
	--    disable_float_background = false, -- disable background for floats
	--    disable_italics = false, -- disable italics
	--	}
	--end,
	--
	---- optionally set the colorscheme within lazy config
	--init = function()
	--	vim.cmd("colorscheme poimandres")
	--end


	"gbprod/nord.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("nord").setup({
			transparent = true,      -- Enable this to disable setting the background color
			terminal_colors = true,  -- Configure the colors used when opening a `:terminal` in Neovim
			diff = { mode = "bg" },  -- enables/disables colorful backgrounds when used in diff mode. values : [bg|fg]
			borders = true,          -- Enable the border between verticaly split windows visible
			errors = { mode = "bg" }, -- Display mode for errors and diagnostics
			search = { theme = "vim" }, -- theme for highlighting search results
			styles = {
				comments = { italic = true, bold = false },
				keywords = { italic = true, bold = false },
				functions = { italic = true, bold = false },
				variables = { italic = false, bold = false},
			},

			colorblind = {
				enable = false,
				preserve_background = false,
				severity = {
					protan = 0.0,
					deutan = 0.0,
					tritan = 0.0,
				},
			},
		})
		vim.cmd.colorscheme("nord")
	end

	--	'navarasu/onedark.nvim',
	--	config = function()
	--		require('onedark').setup({
	--			style = 'dark',
	--			transparent = true,
	--			term_colors = true,
	--			ending_tildes = false,
	--			cmp_itemkind_reverse = false,
	--			toggle_style_key = "<leader>st",
	--			toggle_style_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' },
	--			code_style = {
	--				comments = 'italic',
	--				keywords = 'none',
	--				functions = 'italic',
	--				strings = 'none',
	--				variables = 'italic'
	--			},
	--	
	--			lualine = {
	--				transparent = true,
	--			},
	--	
	--		})
	--		require('onedark').load()
	--	end




	--- SONOKAI

	--	'sainnhe/sonokai',
	--	lazy = false,
	--	priority = 1000,
	--	config = function()
	--		vim.g.sonokai_enable_italic = true
	--		vim.cmd.colorscheme('sonokai')
	--	end
	--}

	-- return {
	-- 	'shawilly/ponokai',
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		-- Optionally configure and load the colorscheme
	-- 		-- directly inside the plugin declaration.
	-- 		vim.g.sonokai_enable_italic = true
	-- 		vim.cmd.colorscheme('ponokai')
	-- 	end
}
