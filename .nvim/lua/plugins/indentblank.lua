return {
	"lukas-reineke/indent-blankline.nvim",
	-- init = function()
	--    require("core.utils").lazy_load "indent-blankline.nvim"
	-- end,
	opts = {
		scope = {},
		enabled = false,
		exclude = {
			filetypes = {
				"help",
				"terminal",
				"lazy",
				"lspinfo",
				"TelescopePrompt",
				"TelescopeResults",
				"mason",
				"dashboard",
				"",
			},
		},
	},
	config = function(_, opts)
		require("ibl").setup {
		exclude = opts.exclude,
    scope = { enabled = false },
}
	end,
}
