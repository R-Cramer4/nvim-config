vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- line nuumbers
vim.wo.number = true

-- mouse mode
vim.o.mouse = 'a'

vim.o.breakindent = true

vim.o.undofile = true

-- tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- case insensitive searching
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.updatetime = 50
vim.wo.signcolumn = 'yes'

vim.o.completeopt = 'menuone,noselect'

vim.opt.scrolloff = 4

-- removing netrw so the file tree works properly
vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1
