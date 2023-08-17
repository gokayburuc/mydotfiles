vim.cmd ("autocmd!")
vim.scriptencoding   = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.encoding     = 'utf-8'
vim.opt.title        = true
vim.opt.autoindent   = true
vim.opt.ai           = true -- auto indent
vim.opt.si           = true --
vim.opt.wrap         = false

vim.g.mapleader       = ' '
vim.g.maplocalleader  = ' '

vim.opt.backspace     = '2'
vim.opt.showcmd       = true
vim.opt.laststatus    = 2
vim.opt.autowrite     = true
vim.opt.cursorline    = false
vim.opt.autoread      = true

-- use spaces for tabs and whatnot
vim.opt.tabstop       = 4
vim.opt.shiftwidth    = 4
vim.opt.shiftround    = true
vim.opt.expandtab     = true

vim.cmd [[ set noswapfile ]]

--Line numbers
vim.wo.number         = true

-- Relative Numbers
vim.wo.relativenumber = true

-- gui colors
vim.opt.termguicolors = true

-- search 
vim.opt.hlsearch      = true
vim.opt.incsearch     = true

-- indent 
vim.opt.smartindent   = true

-- case 
vim.opt.smartcase     = true
vim.opt.ignorecase    = true

-- split 
vim.opt.splitright    = true
vim.opt.splitbelow    = true

