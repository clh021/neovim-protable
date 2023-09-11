vim.g.mapleader = " "

local keymap = vim.keymap
keymap.set("i", "jk", "<ESC>")
keymap.set("n", ";", ":")
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")

keymap.set("n", "<leader>nh", ":nohl<CR>")
-- keymap.set("n", "<leader>ft", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>ft", "<C-w>v:Ntree<CR>")

