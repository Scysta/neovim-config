--| Options |--
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 3
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.scrolloff = 5
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.showmode = false

vim.cmd("colorscheme rose-pine-moon")


--| Mappings |--
local opts = { silent = true, remap = false }
vim.keymap.set("n", " ", "<NOP>", opts)
vim.g.mapleader = " "

vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)
vim.keymap.set("n", "H", "g0", opts)
vim.keymap.set("n", "L", "g$", opts)
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- Hop
vim.keymap.set("n", "f", "<CMD>HopWord<CR>")
vim.keymap.set("n", "F", "<CMD>HopChar2<CR>")


--| Plugins |--
require("plugins")
require("mappings")
require("lsp")
