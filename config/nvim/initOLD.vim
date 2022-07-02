"------------------ Our Sets baybyy
"
set encoding=utf-8
set mouse=a
set exrc 
set relativenumber "relative line numbers
set nu "line numbers
set nohlsearch "removes highlight from search with enter.
set hidden 
set noerrorbells visualbell t_vb= "no annoying bell sounds
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
" set undodir=~/.vim/undodir
" set undofile
set incsearch
set termguicolors
set scrolloff=8 "scroll offset when scrolling down.
" set signcolumn=yes "Adds a vertical guide
" set colorcolumn=100 "Vertical guide is 100 columns wide
set splitbelow "horizontal split always splits below
set splitright "vertical split always split to the right
set cmdheight=1
set guifont=MonoLisa_Custom:h16 
set linespace=18 "line height
set laststatus=2 ruler
set backspace=indent,eol,start


"------------------ Plugins

call plug#begin('~/.vim/plugged')

" Themes
Plug 'michaeldyrynda/carbon' "awesome dark theme
Plug 'rflban/homecolors.vim' "awesome light theme
Plug 'casperstorm/sort-hvid.vim' "awesome light theme
Plug 'zefei/cake16'

Plug 'tpope/vim-vinegar' "improves default file browser. Press dash key
Plug 'preservim/nerdtree' "sidebar
Plug 'ctrlpvim/ctrlp.vim' "navigate with ctrl+p or cmd+p
Plug 'rking/ag.vim' "faster search
Plug 'skwp/greplace.vim' "search and replace
Plug 'tpope/vim-commentary' "comment and uncomment stuff
Plug 'nvim-lualine/lualine.nvim' "status line
Plug 'kyazdani42/nvim-web-devicons' "fancy icons

call plug#end()

" Set the color scheme.
set background=light
colorscheme hvid

" Change default text, for some reason with carbon theme
" it looks black instead of the correct color.
" hi Normal guifg=#C9CCCD 

" Change color of fold column to fake some
" extra padding on the left.
hi foldcolumn guibg=bg
hi signcolumn guibg=bg
hi EndOfBuffer guibg=bg
hi EndOfBuffer guifg=bg guibg=bg

"------------------ Remaps

let mapleader = ","

" Edit the vimrc file.
nmap <leader><leader> :e ~/.config/nvim/init.vim<CR> 
" Edit the gvimrc file.
nmap <leader>g :e ~/.config/nvim/ginit.vim<CR>
" edit vim plugins
nmap <leader>vpe :e~/.config/vim/plugged<CR>

" Horizontal split
nmap <C-H> :sp<CR>
" Vertical split
nmap <C-V> :vsp<CR>
 
" Better split movements. S is shift
"shift+j down
nmap <S-J> <C-W><C-J>
"shift+k up
nmap <S-K> <C-W><C-K>
"shift+l right
nmap <S-L> <C-W><C-L>
"shift+h left
nmap <S-H> <C-W><C-H>

" Toggle nerdtree with cmd+1 like in phpstorm
nmap <leader>1 :NERDTreeToggle<CR>

nmap <D-p> :CtrlP<CR>
" view tags like method names and variables in current file.
nmap <C-r> :CtrlPBufTag<CR>
" View most recent files like cmd+e on phpstorm
nmap <C-e> :CtrlPMRUFiles<CR>

" search entire project like cmd+shift+f in vscode
nmap <C-f> :Ag<space>

" Quick search and replace
nmap <C-s> :Gsearch<CR>
" select arl and do :s/query/replacement to replace
" all instances of your query at once.

" generate ctags.
nmap <leader>c :!ctags -R --exclude=node_modules<space>

" Close buffers with cmd+w instead of closing windows and tabs.
nmap <leader>q :bd<CR>
"imap <D-w> <Esc>:bd<CR>

" Save files
nmap <leader>s :w<CR>
imap <leader>s <Esc>:w<CR> 
"
" Paste from clipboard
nmap <leader>p "*p
imap <leader>p <Esc>"*pa
vmap <leader>p "*p


" Vim plug stuff
" Install plugins
nmap <leader>vpi :PlugInstall<CR>
" Clean plugins
nmap <leader>vpc :PlugClean<CR>

"Comment and uncomment stuff with cmd+/ on macvim
nmap <leader>c gcc
vmap <leader>c gc
imap <leader>c <Esc> gcc

" toggle the terminal on a horizontal split
nmap <C-`> :sp<CR>:resize 20<CR> :term<CR>i
tmap <C-`> <C-\><C-n>:bd!<CR>

"Laravel mappings
nmap <leader>lm :te php artisan make:
nmap <leader>t :te ./vendor/bin/pest<CR>
nmap <leader>ld :te artisan dusk<CR>
nmap <leader>lr :e routes/web.php<CR>

" git mappings
nmap <leader>gs :te git status<CR>
nmap <leader>gco :te git checkout<space>
nmap <leader>gc :te git commit -m<space>
nmap <leader>gaa :te git add .<CR>

"Project mappings
nmap <leader>dc :e ~/code/sites/app.docley<CR>
nmap <leader>kw :e ~/code/sites/kwes<CR>

"------------------ Auto commands

" Automatically source vimrc file when we save.
augroup autosourcing
   autocmd!
   autocmd BufWritePost ~/.config/nvim/init.vim source %
augroup END

" open terminal without line numbers
autocmd TermOpen * setlocal nonumber norelativenumber

" clear out the cmd line after you leave.
augroup cmdline
    autocmd!
    autocmd CmdlineLeave : echo ''
augroup end

"-------------------- NerdTree settings

" Open nerdtree on the right side.
let g:NERDTreeWinPos = "right"

" Dont hijack default file browser when using vinegar
let NERDTreeHijackNetrw = 0

"-------------------- CtrlP Settings
" Tells ctrlp to persist the cache in the configured location
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'

" Use ag to search ctrlp. Its much faster.
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -U --skip-vcs-ignores -g ""'
endif

" Search ignores files inside your .ignore file. So create a .ignore file
" in your projects in order to ignore node_modules, vendor etc.
" I set an example .ignore file for laravel projects inside
" of the .ignore file in this repository.

" Refresh your file tree with f5

"-------------------- Greplace Settings

" Use ag for searching.
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

"-------------------- Neovide settings

let g:neovide_cursor_vfx_mode = "ripple"
" let g:neovide_transparency=0.96

"-------------------- Lualine

lua << EOF
require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'ayu_light',
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {'encoding'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
EOF

"-------------------- Notes
"
"- close all buffers with %bd and use %bd! to close without saving.
