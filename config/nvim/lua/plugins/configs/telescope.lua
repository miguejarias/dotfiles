local telescope = require('telescope')

telescope.setup {
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "vendor",
      ".git",
    }
  },
  pickers = {
    find_files = {
      theme = "dropdown",
      previewer = false,
      hidden = true,
    },
    oldfiles = {
      theme = "dropdown",
      previewer = false,
    },
    live_grep = {
      theme = "dropdown",
    },
    treesitter = {
      theme = "dropdown",
    }
  }
}

telescope.load_extension('fzf')
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', builtin.find_files)
vim.keymap.set('n', '<C-f>', builtin.live_grep)
vim.keymap.set('n', '<leader>e', builtin.oldfiles)
vim.keymap.set('n', '<leader>r', builtin.treesitter)
