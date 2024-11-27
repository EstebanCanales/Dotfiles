return {

	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "auto", -- latte, frappe, macchiato, mocha
			background = {  -- :h background
				light = "mocha",
				dark = "mocha",
			},
			transparent_background = true, -- disables setting the background color.
			show_end_of_buffer = false,   -- shows the '~' characters after the end of buffers
			term_colors = true,          -- sets terminal colors (e.g. `g:terminal_color_0`)
			dim_inactive = {
				enabled = false,            -- dims the background color of inactive window
				shade = "dark",
				percentage = 0.15,          -- percentage of the shade to apply to the inactive window
			},
			no_italic = false,            -- Force no italic
			no_bold = false,              -- Force no bold
			no_underline = false,         -- Force no underline
			styles = {                    -- Handles the styles of general hi groups (see `:h highlight-args`):
				comments = { "italic" },    -- Change the style of comments
				conditionals = { "italic" },
				loops = {},
				functions = {},
				keywords = {},
				strings = {},
				variables = {},
				numbers = {},
				booleans = {},
				properties = {},
				types = {},
				operators = {},
				-- miscs = {}, -- Uncomment to turn off hard-coded styles
			},
			color_overrides = {},
			custom_highlights = {},
			default_integrations = true,
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
				notify = false,
				mini = {
					enabled = true,
					indentscope_color = "",
				},
				-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
			},
		})

		-- setup must be called before loading
		vim.cmd.colorscheme "catppuccin"
	end

	-- 'olivercederborg/poimandres.nvim',
	-- lazy = false,
	-- priority = 1000,
	-- config = function()
	-- 	require('poimandres').setup {
	-- 		bold_vert_split = false, -- use bold vertical separators
	--     dim_nc_background = false, -- dim 'non-current' window backgrounds
	--     disable_background = true, -- disable background
	--     disable_float_background = false, -- disable background for floats
	--     disable_italics = false, -- disable italics
	-- 	}
	-- end,
	--
	-- -- optionally set the colorscheme within lazy config
	-- init = function()
	-- 	vim.cmd("colorscheme poimandres")
	-- end


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

}
