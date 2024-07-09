-- return {
-- 	'navarasu/onedark.nvim',
-- 	config = function()
-- 		require('onedark').setup({
-- 			style = 'dark',
-- 			transparent = false,
-- 			term_colors = true,
-- 			ending_tildes = false,
-- 			cmp_itemkind_reverse = false,
--
-- 			toggle_style_key = "<leader>st",
-- 			toggle_style_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' },
-- 			code_style = {
-- 				comments = 'italic',
-- 				keywords = 'none',
-- 				functions = 'italic',
-- 				strings = 'none',
-- 				variables = 'italic'
-- 			},
--
-- 			lualine = {
-- 				transparent = true,
-- 			},
--
-- 		})
-- 		require('onedark').load()
-- 	end
-- }




--
-- SONOKAI
--

 -- return {
 -- 	'sainnhe/sonokai',
 -- 	lazy = false,
 -- 	priority = 1000,
 -- 	config = function()

 -- 		vim.g.sonokai_enable_italic = true
 -- 		vim.cmd.colorscheme('sonokai')
 -- 	end
 -- }


--
-- PONOKAI
--
 return {
 	'shawilly/ponokai',
 	lazy = false,
 	priority = 1000,
 	config = function()
 		-- Optionally configure and load the colorscheme
 		-- directly inside the plugin declaration.
 		vim.g.sonokai_enable_italic = true
 		vim.cmd.colorscheme('ponokai')
 	end
 }
