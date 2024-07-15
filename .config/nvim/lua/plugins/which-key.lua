return {
	"folke/which-key.nvim",
	keys = { "<leader>", "<c-r>", "<c-w>", '"', "'", "`", "c", "v", "g" },
	cmd = "WhichKey",
	opts = {
		window = {
			border = "none",
			padding = { 0, 0, 0, 0 }
		}
	},
	config = function(_, opts)
		require("which-key").setup(opts)
		require("Esteban.Configs.highlights")({
			WhichKeyFloat = { bg = "none" },
			FloatBorder = { bg = "none" },
			WhichKeySeparator = { bg = "none" },
		})
	end,
}
