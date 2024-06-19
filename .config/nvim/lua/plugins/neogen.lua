return {
	"danymat/neogen",
	config = true,
	keys = {
		{
			"<leader>cf",
			function()
				require("neogen").generate({})
			end,
		},
	}
}
