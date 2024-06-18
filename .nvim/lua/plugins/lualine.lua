return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		require('lualine').setup {
			options = {
				icons_enabled = true,
				theme = require('Esteban.Configs.themelualine').theme(),
				component_separators = { left = '|', right = '|' },
				section_separators = { left = '', right = '' },
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				}
			},
			sections = {
				lualine_a = { 'mode' },
				lualine_b = { 'branch', 'diff'},
				lualine_c = { 'diagnostics' },
				lualine_x = { 'location', 'filename'},
				lualine_y = {},
				lualine_z = { 'filetype'}
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { 'filename' },
				lualine_x = { 'location' },
				lualine_y = {},
				lualine_z = {}
			},
		}
	end
}
