vim.g.mapleader = " "  -- space key as our leader

vim.opt.guicursor = "" -- fat insert cursor
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.backspace = 'indent,eol,start'

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = false -- swap files are annoying
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.undodir"
vim.opt.undofile = true  -- undotree is great

vim.opt.hlsearch = false -- remove highlight after search
vim.opt.incsearch = true

vim.opt.termguicolors = true -- better colors

vim.opt.scrolloff = 8        -- 8 lines max when scrolling
vim.opt.signcolumn = "yes"   -- like a gutter

vim.opt.updatetime = 50

-- vim.opt.colorcolumn = "80"  -- softwrap line

vim.opt.fillchars = 'eob: ' -- remove little squigglies at the end of files
-- vim.opt.showmode = false    -- remove mode from default status line
vim.opt.showtabline = 0     -- dont show any ugly tablines.
vim.opt.laststatus = 0      -- hide statusline
vim.opt.cursorline = true   -- highlight current line
