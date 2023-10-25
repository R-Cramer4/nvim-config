
-- line numbbers
vim.wo.number = true
vim.wo.relativenumber = true

-- mouse mode
vim.o.mouse = 'a'

-- break indent
vim.o.breakindent = true

-- save undo history
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

-- update time
vim.o.updatetime = 200
vim.wo.signcolumn = 'yes'

-- colorscheme
vim.o.termguicolors = true
-- vim.cmd [[colorscheme onedark]]

vim.o.completeopt = 'menuone,noselect'

-- scroll
vim.opt.scrolloff = 8
