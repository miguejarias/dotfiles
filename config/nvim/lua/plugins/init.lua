return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer can manage itself

  -- Themes
  use 'sainnhe/gruvbox-material'
  use 'sainnhe/everforest'
  use 'rayes0/blossom.vim'
  use { 'rose-pine/neovim', as = 'rose-pine' }
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'NTBBloodbath/doom-one.nvim'

  use 'kyazdani42/nvim-web-devicons'                            -- nice icons
  use 'nvim-lua/plenary.nvim'                                   -- idk but a bunch of plugins require it
  use  'stevearc/oil.nvim'                                      -- Like vim vinegar but edit as buffers
  use 'tpope/vim-commentary'                                    -- shortcuts to comment things
  use 'gpanders/editorconfig.nvim'                              -- editorconfig
  use 'kdheepak/lazygit.nvim'                                   -- CLI git tool
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' }) -- better syntax highlighting
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.2' }        -- our fzf
  use 'nvim-lualine/lualine.nvim'                               -- status line
  use 'theprimeagen/harpoon'                                    -- navigation between files
  use 'mbbill/undotree'                                         -- undo until forever
  use 'lewis6991/gitsigns.nvim'                                 -- git signs on the gutter
  use 'akinsho/toggleterm.nvim'                                 -- integrated terminal
  use 'windwp/nvim-autopairs'                                   -- autopairs for characters.
  -- use 'nvim-tree/nvim-tree.lua'                              -- filetree
  use 'rcarriga/nvim-notify'                                    -- nicer notifications

  use {
    'folke/noice.nvim', -- nicer UI for messages/cmdline/popupmenu
    requires = {
      'MunifTanjim/nui.nvim'
    }
  }

  use {
    'VonHeikemen/lsp-zero.nvim', -- LSP and autocompletion support
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' },
    }
  }

  use {
    "goolord/alpha-nvim", -- fancy startup screen
    config = require('plugins.configs.alpha')
  }
end)
