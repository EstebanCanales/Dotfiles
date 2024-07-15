local keymap = vim.keymap




-- Keymap para leader y nvim tree
vim.keymap.set("n", "<leader>e", function()
    if vim.bo.filetype == "nvim-tree" then
        vim.cmd("NvimTreeOpen")
    else
        vim.cmd("NvimTreeToggle")
    end
end, { desc = "Toggle Explorer Focus" })

-- Keymap para fastidiar
-- keymap.set({"n", "i"}, "<Up>", function() vim.cmd("qall!") end)
-- keymap.set({"n", "i"}, "<Down>", function() vim.cmd("qall!") end)
-- keymap.set({"n", "i"}, "<Right>", function() vim.cmd("qall!") end)
-- keymap.set({'n', 'i'}, "<Left>", function() vim.cmd("qall!") end)


-- Keymaps para moverse en la terminal
vim.keymap.set("t", "<esc>", [[<C-\><C-n>]])
vim.keymap.set("n", "<C-h>", [[<Cmd>wincmd h<CR>]], { desc = "Move left" })
vim.keymap.set("n", "<C-j>", [[<Cmd>wincmd j<CR>]], { desc = "Move down" })
vim.keymap.set("n", "<C-k>", [[<Cmd>wincmd k<CR>]], { desc = "Move up" })
vim.keymap.set("n", "<C-l>", [[<Cmd>wincmd l<CR>]], { desc = "Move right" })
vim.keymap.set("n", "<leader>cn", [[<Cmd> NoiceDismiss <CR>]], { desc = "Dismiss Noice notifications" })

-- Keymaps para hacer split
vim.keymap.set("n", "<leader>sh", [[<Cmd>split<CR>]], { desc = "Split horizontal" })
vim.keymap.set("n", "<leader>sv", [[<Cmd>vsplit<CR>]], { desc = "Split horizontal" })


