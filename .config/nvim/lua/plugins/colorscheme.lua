return {
	'navarasu/onedark.nvim',
	config = function()
		require('onedark').setup {
			style = 'darker',
			  code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'italic',
        strings = 'none',
        variables = 'none'
    },
		}

		require('onedark').load()
	end
}

