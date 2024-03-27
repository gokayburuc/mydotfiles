local vglob = vim.g -- global options
local vopt = vim.opt -- options
local vwo = vim.wo  -- window options 

-- syntax 
vglob.syntax = true

-- encoding
vim.scriptencoding = "utf-8"
vopt.fileencoding = "utf-8"
vopt.encoding = "utf-8"

-- title
vopt.title = true

-- indent
vopt.breakindent = true
vopt.autoindent = true
vopt.ai = true -- auto indent
vopt.si = true -- smart indent

-- wrap
vopt.wrap = true

-- mapleader
vglob.mapleader = " "
vglob.maplocalleader = " "

vopt.backspace = "2"
vopt.showcmd = true
vopt.laststatus = 2
vopt.autowrite = true
vopt.cursorline = false
vopt.autoread = true

-- use spaces for tabs and whatnot
vopt.tabstop = 4
vopt.shiftwidth = 4
vopt.shiftround = true
vopt.expandtab = true

-- shell options
vopt.shell = "zsh"

vim.cmd([[ set noswapfile ]])

--line numbers
vwo.number = true

-- Relative Numbers
vwo.relativenumber = true

-- gui colors
vopt.termguicolors = true

-- search
vopt.hlsearch = true
vopt.incsearch = true

-- indent
vopt.smartindent = true
vopt.autoindent = true

-- case
vopt.smartcase = true
vopt.ignorecase = true

-- split
vopt.splitright = true
vopt.splitbelow = true

-- system clipboard settings
vopt.clipboard:append({ "unnamedplus" })

-- FIXME: node_modules exclude

-- wildoptions and other settings
vopt.wildoptions = "pum"
vopt.pumblend = 5
vopt.winblend = 0

-- foldmethod 
-- FIXME: fold method 
vim.g.html_fold_method = 'indent'
