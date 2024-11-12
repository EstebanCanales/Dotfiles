local keymap = vim.keymap

-- Keymap para leader y nvim tree
keymap("n", "<leader>e", function()
    if vim.bo.filetype == "nvim-tree" then
        vim.cmd("NvimTreeOpen")
    else
        vim.cmd("NvimTreeToggle")
    end
end, { desc = "Toggle Explorer Focus" })

-- Keymaps para moverse en la terminal
keymap("t", "<esc>", [[<C-\><C-n>]])
keymap("n", "<C-h>", [[<Cmd>wincmd h<CR>]], { desc = "Move left" })
keymap("n", "<C-j>", [[<Cmd>wincmd j<CR>]], { desc = "Move down" })
keymap("n", "<C-k>", [[<Cmd>wincmd k<CR>]], { desc = "Move up" })
keymap("n", "<C-l>", [[<Cmd>wincmd l<CR>]], { desc = "Move right" })
keymap("n", "<leader>cn", [[<Cmd> NoiceDismiss <CR>]], { desc = "Dismiss Noice notifications" })

-- Keymaps para hacer split
keymap("n", "<leader>sh", [[<Cmd>split<CR>]], { desc = "Split horizontal" })
keymap("n", "<leader>sv", [[<Cmd>vsplit<CR>]], { desc = "Split horizontal" })

