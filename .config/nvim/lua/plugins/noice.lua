return {
  "folke/noice.nvim",
  lazy = false,
  dependencies = {
    "MunifTanjim/nui.nvim",
    {
      "rcarriga/nvim-notify",
      config = function()
        require("notify").setup {}
      end,
    },
  },
  config = function()
    require("noice").setup {
      lsp = {
        hover = {
          enabled = false,
        },
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
        signature = {
          enabled = false,
        },
      },
      hover = {
        enabled = false,
      },
      presets = {
        long_message_to_split = true, -- long messages will be sent to a split
      },
    }
  end,
}
