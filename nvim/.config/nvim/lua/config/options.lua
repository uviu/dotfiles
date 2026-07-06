-- Options
vim.opt.shell = "/bin/sh" -- force POSIX shell so rg glob args like !.git don't break in nushell
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.splitright = true -- Vertical splits open to the right
vim.opt.splitbelow = true -- Horizontal splits open below

vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Relative line numbers

vim.opt.tabstop = 2 -- Number of spaces tabs count for
vim.opt.shiftwidth = 2 -- Size of an indent
vim.opt.softtabstop = 2 -- Number of spaces for a tab in editing
vim.opt.expandtab = true -- Use spaces instead of tabs

-- UI
vim.opt.termguicolors = true -- True color support
vim.opt.cursorline = true -- Highlight current line
vim.opt.signcolumn = "yes" -- Always show sign column
vim.opt.showmode = false -- Don't show mode (lualine shows it)
vim.opt.cmdheight = 1 -- Command line height
vim.opt.pumheight = 10 -- Popup menu height
vim.opt.pumblend = 10 -- Popup menu transparency
vim.opt.winblend = 10 -- Floating window transparency
vim.opt.scrolloff = 8 -- Lines of context
vim.opt.sidescrolloff = 8 -- Columns of context
vim.opt.fillchars = { eob = " " } -- Hide ~ on empty lines
