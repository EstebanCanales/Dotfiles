---@type ChadrcConfig

local M = {}

M.base46 = {
  treesitter = {
    ["@variable"] = { fg = "#000000" },
  },
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "bearded-arc" },
  transparency = true,
  hl_override = {
    ["@function"] = { italic = true, bold = true },
    Function = { italic = true, bold = true },
    ["@keyword"] = { italic = true, bold = true },
    Comment = { fg = "#a6adc8", italic = true, bold = true },
    ["@comment"] = { fg = "#a6adc8", italic = true, bold = true },
  },
}

M.colorify = {
  enabled = true,
  mode = "virtual", -- fg, bg, virtual
  -- virt_text = "󱓻 ",
  virt_text = "◉ ",
  highlight = { hex = true, lspvars = true },
}

M.ui = {
  telescope = { style = "borderless" }, -- borderless / bordered

  cmp = {
    style = "atom_colored", -- default/flat_light/flat_dark/atom/atom_colored
    sparator_style = "block",
    format_colors = {
      tailwind = true,
    },
  },

  statusline = {
    theme = "default", -- default/vscode/vscode_colored/minimal
  },

  tabufline = {
    enabled = false,
  },

  lsp = { signature = false },
}

M.term = {
  winopts = { number = false },
  sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
  float = {
    relative = "editor",
    row = 0.3,
    col = 0.50,
    width = 0.5,
    height = 0.4,
    border = "single",
  },
}

return M
