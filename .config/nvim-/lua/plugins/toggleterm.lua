return {
	"akinsho/toggleterm.nvim",
	version = "*",
	event = "VeryLazy",
	config = function()
		require("toggleterm").setup({
			size = 10,
		})
		vim.keymap.set("n", "<leader>th", function()
			vim.cmd("ToggleTerm direction=horizontal")
		end, { desc = "toggle horizontal terminal" })

		vim.keymap.set("n", "<leader>tn", function()
			local command = CountTerms() + 1 .. "ToggleTerm"
			vim.cmd(command)
		end, { noremap = true, silent = true, desc = "New" })

		vim.keymap.set("n", "<leader>tv", function()
			vim.cmd("ToggleTerm direction=vertical size=50")
		end, { desc = "Toggle vertical Terminal" })
		vim.keymap.set("n", "<leader>tf", function()
			vim.cmd("ToggleTerm direction=float")
		end, { desc = "Toggle floating Terminal" })
	end,
}

