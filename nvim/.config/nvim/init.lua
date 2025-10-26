-- load lazy.nvim
require("config.lazy")

-- load keymaps
require("config.keymaps")

--load lsp
require("config.lsp")

--set indent size
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

--display relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true
