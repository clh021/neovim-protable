vim.g.mapleader = " "

local keymap = vim.keymap
-- keymap.set("i", "jk", "<ESC>")
keymap.set("n", ";", ":")
keymap.set("n", "<A-->", ":split term://zsh<CR>")
keymap.set("n", "<A-=>", ":vsplit term://zsh<CR>")
keymap.set("t", "<A-->", "<C-\\><C-n>:bdelete! %<CR>")
keymap.set("t", "<A-=>", "<C-\\><C-n>:bdelete! %<CR>")
keymap.set("t", "<ESC>","<C-\\><C-n>")
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")

-- keymap.set("n", "<leader>1", ":tabnext 1<CR>")
-- keymap.set("n", "<leader>2", ":tabnext 2<CR>")
-- keymap.set("n", "<leader>3", ":tabnext 3<CR>")
-- keymap.set("n", "<leader>4", ":tabnext 4<CR>")
-- keymap.set("n", "<leader>5", ":tabnext 5<CR>")
-- keymap.set("n", "<leader>6", ":tabnext 6<CR>")
-- keymap.set("n", "<leader>7", ":tabnext 7<CR>")
-- keymap.set("n", "<leader>8", ":tabnext 8<CR>")
-- keymap.set("n", "<leader>9", ":tabnext 9<CR>")

keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n", "<leader>ft", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>e",  ":NvimTreeFocus<CR>")
-- keymap.set("n", "<leader>ft", "<C-w>v:Ntree<CR>")

