local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })     -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })   -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })      -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>br", "<cmd>:e!<CR>", { desc = "Reload Buffer" })

-- vim.keymap.set('n', '<leader>c', ':bprev<CR>:bdelete #<CR>')
keymap.set("n", "<leader>bd", ":bprev<CR>:bdelete #<CR>", { desc = "Close Current Buffer" })
keymap.set("n", "<leader>bP", "<cmd>:%bd<CR>", { desc = "Close All Buffers" })
keymap.set("n", "<leader>bC", "<cmd>%bd|e#|bd#<CR>", { desc = "Close All Buffers But This" })
vim.keymap.set("n", "<S-q>", "<cmd>:q<CR>", { desc = "Close Without Saving" })

keymap.set("n", "<ESC>", "<cmd>nohlsearch<CR>")

keymap.set("n", "<leader>t", "<cmd>sp<CR> <cmd>term<CR> <cmd>resize 20N<CR> i", { desc = "Open terminal" }) -- close current split window

keymap.set("n", "<leader>p", '"_dp', { desc = "paste over without copying" })
keymap.set("n", "<leader>P", '"_dP', { desc = "paste over without copying" })

-- keymap.set("n", "<leader><tab>", "<cmd>Ex<CR>", { desc = "Open tree full screen" })

vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
vim.keymap.set("n", "<leader>qq", ":qa<CR>", { desc = "Quit" })

-- panes navigation
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
keymap.set("n", "<S-h>", ":bprev<CR>", { desc = "Goto Previous Buffer", silent = true })
keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Goto Next Buffer", silent = true })

vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
vim.keymap.set("n", "<leader>xx", vim.diagnostic.open_float)

-- move lines with alt + j/k
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { silent = true })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { silent = true })

vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]])

-- Press 'S' for quick find/replace for the word under the cursor
vim.keymap.set("n", "S", function()
  local cmd = ":%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>"
  local keys = vim.api.nvim_replace_termcodes(cmd, true, false, true)
  vim.api.nvim_feedkeys(keys, "n", false)
end)

-- Open Spectre for global find/replace
keymap.set("n", "<leader>S", function()
  require("spectre").toggle()
end)

keymap.set("n", "<leader>fm", function()
  require("oil").toggle_float()
end)
