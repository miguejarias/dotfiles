-- Quick file edits
vim.keymap.set("n", "<leader><leader>", ":e ~/.config/nvim/init.lua<CR>") -- edit init.lua

-- Buffer stuff
vim.keymap.set("n", "<leader>w", ":w<CR>")   -- save
vim.keymap.set("n", "<leader>c", ":bd<CR>")  -- close buffer
vim.keymap.set("n", "<leader>qq", ":q<CR>")  -- quit buffer
vim.keymap.set("n", "<leader>qa", ":qa<CR>") -- quit all buffers

-- Commenting
vim.keymap.set("n", "<leader>/", ":Comment<CR>")
vim.keymap.set("v", "<leader>/", ":Comment<CR>")

-- LazyGit
vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>") -- launch lazygit

-- Copy to system
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

-- Tabbing
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Plugins
vim.keymap.set("n", "<leader>pi", ":PackerSync<CR>")

-- Better splits
vim.keymap.set('n', '<leader>sp', ':sp<CR>')  -- horizontal split
vim.keymap.set('n', '<leader>sv', ':vsp<CR>') -- vertical split

-- Better split movements. S is shift
vim.keymap.set('n', '<C-j>', '<C-W><C-J>') --shift+j down
vim.keymap.set('n', '<C-k>', '<C-W><C-K>') --shift+k up
vim.keymap.set('n', '<C-l>', '<C-W><C-L>') --shift+l right
vim.keymap.set('n', '<C-h>', '<C-W><C-H>') --shift+h left


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")                                              -- move lines down in visual
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")                                              -- move lines up in visual
vim.keymap.set("n", "n", "nzzzv")                                                         -- keep search terms centered on next
vim.keymap.set("n", "N", "Nzzzv")                                                         -- keep search terms centered on prev
vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- replace all instances of word you're on
