vim.g.mapleader = " "

local keymap = vim.keymap
keymap.set("i", "jk", "<ESC>")
keymap.set("n", ";", ":")
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")

keymap.set("n", "<leader>nh", ":nohl<CR>")
