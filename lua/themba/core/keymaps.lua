vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("n", "<leader>L", "<cmd>Lazy<CR>", { desc = "Open Lazy" })

keymap.set("n", "<leader>qq", "<cmd>q<CR>", { desc = "Close" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to next window" })
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to previous window" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to bottom window" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to up window" })
