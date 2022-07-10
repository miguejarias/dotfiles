--------------------------------------------------

-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

--------------------------------------------------

vim.g.mapleader = ","

-- source current file
map('n', '<leader>lua', ':luafile %<CR>')
map('i', '<leader>lua', '<Esc>:luafile %<CR>')

-- Quick file edits
map('n', '<leader><leader>', ':e ~/.config/nvim/init.lua<CR>') -- init.lua
map('n', '<leader>g', ':e ~/.config/nvim/ginit.vim<CR>') -- ginit.vim
map('n', '<leader>vpe', ':e ~/.config/vim/plugged<CR>') -- vim plugins

-- Better splits
map('n', '<C-h>', ':sp<CR>') -- horizontal split
map('n', '<C-v>', ':vsp<CR>') -- vertical split

-- Better split movements. S is shift
map('n', '<S-J>', '<C-W><C-J>') --shift+j down
map('n', '<S-K>', '<C-W><C-K>') --shift+k up
map('n', '<S-L>', '<C-W><C-L>') --shift+l right
map('n', '<S-H>', '<C-W><C-H>') --shift+h left

-- Buffers
map('n', '<leader>q', ':bd<CR>') -- close
map('i', '<leader>q', '<Esc>:bd<CR>') -- close
map('n', '<leader>b', ':buffers<CR>') -- show buffers
map('t', '<leader>b', '<C-\\><C-n>:buffers<CR>i') -- show buffers

-- Save files
map('n', '<leader>s', ':w<CR>')
map('i', '<leader>s', '<Esc>:w<CR>')

-- Paste from system
map('n', '<leader>p', '"*p')
map('i', '<leader>p', '<Esc>"*pa')
map('v', '<leader>p', '"*p')

-- Copy to system
map('n', '<leader>y', '"*y')
map('i', '<leader>y', '<Esc>"*y')
map('v', '<leader>y', '"*y')

-- Packer stuff
map('n', '<leader>vpi', ':PackerSync<CR>') -- install plugins
 
-- Commenting
map('n', '<leader>c', ':Comment<CR>')
map('v', '<leader>c', ':Comment<CR>')
map('i', '<leader>c', '<Esc>:Comment<CR>')

-- Telescope find files
map('n', '<C-p>', ':Telescope find_files hidden=true<CR>')
map('n', '<C-f>', ':Telescope live_grep<CR>')
-- map('n', '<C-r>', ':lua require("telescope.builtin").lsp_document_symbols{}<CR>')
map('n', '<C-r>', ':lua require("telescope.builtin").treesitter{}<CR>')
map('n', '<C-e>', ':lua require("telescope.builtin").oldfiles{}<CR>')
map('n', 'gr', ':lua require("telescope.builtin").lsp_references{}<CR><Esc>')
map('n', 'gd', ':lua require("telescope.builtin").lsp_definitions{}<CR><Esc>')

-- Quick search and replace
map('n', '<C-s>', ':Gsearch<CR>')

-- Toggle terminal
map('n', '<C-\\>', ':20sp<CR>:term<CR>i') -- open terminal at the bottom
map('t', '<C-\\>', '<C-\\><C-n>:bd!<CR>') -- close terminal at the bottom
map('t', '<Esc>', '<C-\\><C-n>') -- exit terminal mode inside terminal
map('n', '<leader>wa', ':term<CR>iwatch<CR><C-\\><C-n>:bprevious<CR>') -- run npm watcher.

-- Buffer commands
map('n', '<C-b>', ':buffers<CR>')
map('t', '<C-b>', '<C-\\><C-n>:buffers<CR>i')
map ('n', '<leader>1', ':LualineBuffersJump 1<CR>')
map ('n', '<leader>2', ':LualineBuffersJump 2<CR>')
map ('n', '<leader>3', ':LualineBuffersJump 3<CR>')
map ('n', '<leader>4', ':LualineBuffersJump 4<CR>')
map ('n', '<leader>5', ':LualineBuffersJump 5<CR>')
map ('n', '<leader>6', ':LualineBuffersJump 6<CR>')
map ('n', '<leader>7', ':LualineBuffersJump 7<CR>')
map ('n', '<leader>8', ':LualineBuffersJump 8<CR>')
map ('n', '<leader>9', ':LualineBuffersJump 9<CR>')

-- Tabbing
map('v', '<', '<gv')
map('v', '>', '>gv')
 
-- Laravel mappings
map('n', '<leader>lm', ':te php artisan make:') -- artisan make
map('n', '<leader>ld', ':te php artisan dusk<CR>') -- artisan dusk
map('n', '<leader>lr', ':e routes/web.php<CR>') -- edit web routes file.

-- PHP mappings
map('n', '<leader>t', ':te ./vendor/bin/pest<CR>') -- pest

-- Git mappings
map('n', '<leader>gs', ':te git status<CR>')
map('n', '<leader>gaa', ':te git add .<CR>')
map('n', '<leader>ga', ':te git add<space>')
map('n', '<leader>gco', ':te git checkout<space>')
map('n', '<leader>gc', ':te git commit -m<space>')
map('n', '<leader>dd', ':GitGutterLineHighlightsToggle<CR>') -- highlight git diff
map('n', '<leader>D', ':GitGutterDiffOrig<CR>') -- compare git diff in splits
map('n', '<C-d>', ':lua require("telescope.builtin").git_status{}<CR>') -- show git diffs for all files

-- Project mappings
map('n', '<leader>dc', ':e ~/code/sites/app.docley/.env<CR>:cd %:p:h<CR>:intro<CR>')
map('n', '<leader>kw', ':e ~/code/sites/kwes<CR>:cd %:p:h<CR>')

--------------------------------------------------

-- Autocommands
vim.cmd [[
    augroup autosourcing
        autocmd!
        autocmd BufWritePost ~/dotfiles/config/nvim/init.lua luafile %
    augroup END

    autocmd TermOpen * setlocal nonumber norelativenumber

    augroup cmdline
        autocmd!
        autocmd CmdlineLeave : echo ''
    augroup end

    autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js,*.vue EslintFixAll
    autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js,*.vue,*.css,*.json,*.html Prettier
    autocmd User TelescopePreviewerLoaded setlocal wrap
    autocmd BufWritePost * GitGutter
]]

-- Other settings
-- vim.cmd('let g:gitgutter_signs = 0') -- turn git gutter off
