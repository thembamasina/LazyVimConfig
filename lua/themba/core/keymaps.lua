-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>xx", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<S-h>", ":bprev<CR>", { desc = "Goto Previous Buffer", silent = true })
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Goto Next Buffer", silent = true })

vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
vim.keymap.set("n", "<leader>p", '"_dp', { desc = "paste over without copying" })
vim.keymap.set("n", "<leader>P", '"_dP', { desc = "paste over without copying" })

vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

vim.keymap.set("n", "<leader>bd", ":bprev<CR>:bdelete #<CR>", { desc = "Close Current Buffer" })
vim.keymap.set("n", "<leader>bP", "<cmd>:%bd<CR>", { desc = "Close All Buffers" })
vim.keymap.set("n", "<leader>bC", "<cmd>%bd|e#|bd#<CR>", { desc = "Close All Buffers But This" })
vim.keymap.set("n", "<leader>br", "<cmd>:e!<CR>", { desc = "Reload Buffer" })
vim.keymap.set("n", "<S-q>", "<cmd>:q<CR>", { desc = "Close Without Saving" })

vim.keymap.set("n", "<leader>M", "<cmd>Mason<CR>", { desc = "Mason Install" })
vim.keymap.set("n", "<leader>L", "<cmd>Lazy<CR>", { desc = "Open Lazy" })
-- move lines with alt + j/k
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { silent = true })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { silent = true })

-- Press 'S' for quick find/replace for the word under the cursor
vim.keymap.set("n", "S", function()
	local cmd = ":%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>"
	local keys = vim.api.nvim_replace_termcodes(cmd, true, false, true)
	vim.api.nvim_feedkeys(keys, "n", false)
end)
-- vim.keymap.set("n", "<leader>fm", function()
--   require("oil").toggle_float()
-- end)
