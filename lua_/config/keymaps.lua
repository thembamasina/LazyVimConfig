-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>t", "<cmd>sp<CR> <cmd>term<CR> <cmd>resize 20N<CR> i", { desc = "Open terminal" }) -- close current split window

keymap.set("n", "<leader>p", '"_dp', { desc = "paste over without copying" })
keymap.set("n", "<leader>P", '"_dP', { desc = "paste over without copying" })

keymap.set("n", "<leader><tab>", "<cmd>Ex<CR>", { desc = "Open tree full screen" })

-- keymap.set("n", "<C-_>", "gcc", { noremap = true, desc = "Toggle Comment" })
-- keymap.set("v", "<C-_>", "gcc", { noremap = true, desc = "Toggle Comment" })

---------- DEBUGGING ------------
-- Set keymaps to control the debugger
vim.keymap.set("n", "<F5>", require("dap").continue)
vim.keymap.set("n", "<F10>", require("dap").step_over)
vim.keymap.set("n", "<F11>", require("dap").step_into)
vim.keymap.set("n", "<F12>", require("dap").step_out)
vim.keymap.set("n", "<leader>b", require("dap").toggle_breakpoint)
vim.keymap.set("n", "<leader>B", function()
  require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
end)
