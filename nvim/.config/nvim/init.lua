vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 999

vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

vim.opt.termguicolors = true
vim.cmd("colorscheme default")
vim.opt.cursorline = true
vim.cmd("highlight CursorLine gui=underline cterm=underline guibg=NONE ctermbg=NONE")

vim.cmd([[
  hi Normal guibg=NONE ctermbg=NONE
  hi NormalNC guibg=NONE ctermbg=NONE
  hi VertSplit guibg=NONE ctermbg=NONE
]])

vim.g.mapleader = " "

local keybind = vim.api.nvim_set_keymap

keybind("n","<leader>r",":!python3 %<CR>", {noremap = true, silent =false})

keybind("n","<leader>o",":source<CR>", {noremap = true, silent =false})

keybind("n","<leader>n",":norm ", {noremap = true, silent = false})
keybind("x","<leader>n",":norm ", {noremap = true, silent = false})

keybind("n","<leader>w",":w<CR>", {noremap = true, silent = false})
keybind("n","<leader>q",":q<CR>", {noremap = true, silent = false})
keybind("n","<leader>e",":Ex<CR>", {noremap = true, silent = false})

