require("plugins")

local map = require("utils").map

vim.g.mapleader = " "
vim.g.python_recommended_style = 0

vim.o.cursorline = true
vim.o.list = true
vim.o.mouse = "a"
vim.o.number = true
vim.o.relativenumber = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.termguicolors = true
vim.o.wrap = false

vim.opt.listchars:append({
	extends = "→",
	lead = "·",
	precedes = "←",
	tab = "│ ",
	trail = "·"
})

map("<Leader>ff", "<cmd>Telescope find_files<cr>")
map("<Leader>nt", "<cmd>NvimTreeToggle<cr>")
map("<Leader>nf", "<cmd>NvimTreeFindFile<cr>")
map("<Leader>el", "A")

require("config.rpc")
require("config.onedark")
require("config.cmp")
require("config.comment")
require("config.gitsigns")
require("config.lsp_signature")
require("config.lualine")
require("config.nvim-lsp")
require("config.nvim-tree")
require("config.nvim-treesitter")
require("config.trim")
