require('Esteban.keymaps')
require('Esteban.options')

require('Esteban.colors') -- Establecer el esquema de colores por defecto

vim.api.nvim_set_keymap('n', '<Leader>cs', ":lua require('Esteban.colors').select_colorscheme()<CR>", { noremap = true, silent = true })



