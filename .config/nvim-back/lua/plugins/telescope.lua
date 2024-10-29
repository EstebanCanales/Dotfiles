return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.6',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		require('telescope').setup {
			defaults = {
				file_ignore_patterns = { 'node_modules'},
				prompt_prefix = '❯ ',
				selection_caret = '❯ ',
				layout_config = {
					prompt_position = 'top',
					horizontal = { width_padding = 0.1, height_padding = 0.1, preview_width = 0.6 },
					vertical = { width_padding = 0.05, height_padding = 1, preview_height = 0.5 },
				},
				mappings = {
					i = {
						['<esc>'] = require('telescope.actions').close,
						['<C-j>'] = require('telescope.actions').move_selection_next,
						['<C-k>'] = require('telescope.actions').move_selection_previous,
					},
				},
			},
		}
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
		vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
	end
}
