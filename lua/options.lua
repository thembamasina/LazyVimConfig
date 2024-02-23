local opt = vim.opt -- for conciseness

vim.g.mapleader = " "
-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)
vim.wo.number = true
-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.softtabstop = 2
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one
opt.smartindent = true

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.incsearch = true
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive
opt.hlsearch = true

-- appearance
opt.cursorline = true -- highlight the current cursor line
opt.colorcolumn = "100"
opt.signcolumn = "yes"
opt.scrolloff = 100
opt.completeopt = "menuone,noinsert,noselect"
-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
-- opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false
opt.backup = false
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


vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
vim.keymap.set('n', '<leader>qq', ':qa<CR>', {desc = 'Quit'});

-- panes navigation
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

