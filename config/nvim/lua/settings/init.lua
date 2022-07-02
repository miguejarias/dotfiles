local set = vim.opt

set.fileencoding = 'utf-8'
set.exrc = true
set.relativenumber = true
set.nu = true
set.hlsearch = false
set.hidden = true
set.errorbells = false
set.hidden = true
set.hidden = true
set.tabstop = 4
set.tabstop = 4 
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.smarttab = true
set.smartindent = true
set.wrap = false
set.smartcase = true
set.swapfile = false
set.backup = false
set.incsearch = true
set.termguicolors = true
set.scrolloff = 8 --scroll offset when scrolling down.
set.splitbelow = true --horizontal split always splits below
set.splitright = true --vertical split always split to the right
set.cmdheight = 1
set.guifont = 'MonoLisa_Custom:h16:w25:i25'
set.linespace = 18 --line height
set.laststatus=2
set.backspace = 'indent,eol,start'
set.mouse = 'a' -- use mouse in nvim
set.shell = 'fish'
set.grepprg = 'ag'
set.signcolumn = 'yes'

vim.cmd [[ 
    let g:grep_cmd_opts = '--line-numbers --noheading'
    let g:nord_italic_comments = 1
    let g:nord_italic = 1
]]
