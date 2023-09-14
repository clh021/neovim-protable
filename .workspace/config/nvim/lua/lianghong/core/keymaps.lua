vim.g.mapleader = " "

local keymap = vim.keymap
-- keymap.set("i", "jk", "<ESC>")
keymap.set("n", ";", ":")
keymap.set("n", "<A-->", ":split term://zsh<CR>")
keymap.set("n", "<A-=>", ":vsplit term://zsh<CR>")
keymap.set("t", "<A-->", "<C-\\><C-n>:bdelete! %<CR>")
keymap.set("t", "<A-=>", "<C-\\><C-n>:bdelete! %<CR>")
keymap.set("t", "<ESC>", "<C-\\><C-n>")
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally

keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

keymap.set("n", "<leader>1", ":tabnext 1<CR>")
keymap.set("n", "<leader>2", ":tabnext 2<CR>")
keymap.set("n", "<leader>3", ":tabnext 3<CR>")
keymap.set("n", "<leader>4", ":tabnext 4<CR>")
keymap.set("n", "<leader>5", ":tabnext 5<CR>")
keymap.set("n", "<leader>6", ":tabnext 6<CR>")
keymap.set("n", "<leader>7", ":tabnext 7<CR>")
keymap.set("n", "<leader>8", ":tabnext 8<CR>")
keymap.set("n", "<leader>9", ":tabnext 9<CR>")

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
-- keymap.set("n", "<leader>ft", "<C-w>v:Ntree<CR>")

keymap.set("n", "<leader>w-", ":resize +9<CR>")
keymap.set("n", "<leader>w=", ":resize -9<CR>")
keymap.set("n", "<leader>w,", ":vert resize +9<CR>")
keymap.set("n", "<leader>w.", ":vert resize -9<CR>")

-- keymap.set("n", "<leader>ft", ":NvimTreeToggle<CR>")
-- keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
-- keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>")
--
-- keymap.set("n", "<leader>F", ":Format<CR>")
