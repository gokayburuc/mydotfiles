-- encoding
vim.scriptencoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.encoding = "utf-8"

vim.opt.title = true

-- indent
vim.opt.breakindent = true
vim.opt.autoindent = true
vim.opt.ai = true -- auto indent
vim.opt.si = true -- smart indent

-- wrap
vim.opt.wrap = true

-- mapleader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = false
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

-- shell options
vim.opt.shell = "zsh"

vim.cmd([[ set noswapfile ]])

--line numbers
vim.wo.number = true

-- Relative Numbers
vim.wo.relativenumber = true

-- gui colors
vim.opt.termguicolors = true

-- search
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- indent
vim.opt.smartindent = true
vim.opt.autoindent = true 

-- case
vim.opt.smartcase = true
vim.opt.ignorecase = true

-- split
vim.opt.splitright = true
vim.opt.splitbelow = true

-- system clipboard settings
vim.opt.clipboard:append({ "unnamedplus" })

-- wildoptions and other settings
vim.opt.wildoptions = "pum"
vim.opt.pumblend = 5
vim.opt.winblend = 0
