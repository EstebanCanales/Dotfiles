return {
  "anurag3301/nvim-platformio.lua",
  lazy = false,
  cmd = {
    "Pioinit",
    "Piorun",
    "Piocmd",
    "Piolib",
    "Piomon",
  },
  dependencies = {
    { "akinsho/nvim-toggleterm.lua" },
    { "nvim-telescope/telescope.nvim" },
    { "nvim-lua/plenary.nvim" },
  },
}
