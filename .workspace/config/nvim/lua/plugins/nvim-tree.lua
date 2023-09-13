vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local keymap = vim.keymap
keymap.set("n", "<leader>ft", ":NvimTreeToggle<CR>")
keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>")

require("nvim-tree").setup()
