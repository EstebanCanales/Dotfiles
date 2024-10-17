-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig

local M = {}

M.base46 = {
  theme = "catppuccin",
  hl_add = {},
   hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
  integrations = {},
  transparency = true,
}

M.colorify = {
  enabled = true,
  mode = "virtual", -- fg, bg, virtual
  virt_text = "󱓻 ",
  highlight = { hex = true, lspvars = true },
}

M.ui = {
  tabufline = {
    enabled = false,
  },

}

M.nvdash = {
  load_on_startup = false,

  header = {
    "                                                           ",
    "                                                           ",
    "  ░░░▒▒▒▒░░░░                         ▒█▒                  ",
    " ░█▓▒▒▒▒▒▒▓██████████▒░                                    ",
    "                     ▒██████▒░                             ",
    "                            ▒████▓░                        ",
    "         ░▒████████████▓░░       ▒████░                    ",
    "      ░███▒            ░▓██████▒░    ░████░                ",
    "    ▒█▒                        ▒████▒    ▒███░  ░██        ",
    "   ▒█▒         ░▓██████     ░░      ████░   ▒██▒           ",
    "   ▒█░      ░███░ ███░   ███████▒      ▒██▒   ░██▓         ",
    "    ██░     ██   ░██░  ░█▓      ██  ░    ░██░   ░██▒       ",
    "    ░██░    ▒█▒    ▓██▒         ▓█░░██▓    ▒█▒    ▒██      ",
    "      ▓██    ▒██░     ▓███▒     ▓▓    ██   ▒█▒     ▒█▒     ",
    "       ░███░   ▓██░       ▒████████████▓████░       ██     ",
    " ░█▒      ▓██▒   ░████░          ░░▒▒▒▒░░          ░██     ",
    "            ░███▒    ░█████░                               ",
    "               ░████░     ░███████▓░          ▒███▒        ",
    "                   ░████▒        ░░▓██████████▒░           ",
    "          ░▓           ░▓████▓░                     ░▓     ",
    "           ░                 ░██████▒░               ░     ",
    "                                   ░▒████████▒░            ",
    "        ▓                                    ░▒▓█████████▒ ",
    "                    ▒                                      ",
  },

  buttons = {
    { txt = "󰱼 Find file", keys = "f", cmd = "Telescope find_files" },
  },
}

M.term = {
  winopts = { number = false },
  sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
  float = {
    relative = "editor",
    row = 0.3,
    col = 0.25,
    width = 0.5,
    height = 0.4,
    border = "single",
  },
}

return M
