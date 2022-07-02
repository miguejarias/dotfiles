require('plugins.lualine')
require('plugins.nightfox')
require('plugins.treesitter')
require('plugins.lsp')
require('plugins.nvim-autopairs')
require('plugins.prettier')

return require('packer').startup(function ()
    -- plugin manager
    use 'wbthomason/packer.nvim'

    -- themes
    use 'EdenEast/nightfox.nvim'
    use 'casperstorm/sort-hvid.vim'
    use 'michaeldyrynda/carbon'
    use 'arcticicestudio/nord-vim'
    use 'flazz/vim-colorschemes'

    use 'tpope/vim-vinegar' -- improves filetree
    use 'tpope/vim-commentary' -- shortcuts to comment things
    use 'nvim-lualine/lualine.nvim' -- status line
    use 'kyazdani42/nvim-web-devicons' -- nice icons
    use 'skwp/greplace.vim' -- search and replace
    use 'jwalton512/vim-blade' -- blade highlighting
    use 'gpanders/editorconfig.nvim' -- editorconfig
    use 'windwp/nvim-autopairs' -- autopairs for characters.
    use 'windwp/nvim-ts-autotag' -- close htmlt tags.
    use 'airblade/vim-gitgutter' -- git functionality on gutter

    -- LSP Stuff
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use('jose-elias-alvarez/null-ls.nvim') -- formatting for lsp
    use('MunifTanjim/prettier.nvim') -- prettier

    -- fzf file finder like ctrl+p
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- better syntax highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- fancy sstartup screen
    use {
        "goolord/alpha-nvim",
        config = function ()
            local alpha = require'alpha'
            local dashboard = require'alpha.themes.dashboard'
            dashboard.section.header.val = {
                [[                                                 ]],
                [[                                                 ]],
                [[                                                 ]],
                [[                                                 ]],
                [[                                                 ]],
                [[                               __                ]],
                [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
                [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
                [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
                [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
                [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
            }
            dashboard.section.buttons.val = {
                dashboard.button( "e", "New file" , ':ene <BAR> startinsert <CR>'),
                dashboard.button( "ctrl+p", "Find files" , ':Telescope find_files<CR>'),
                dashboard.button( "ctrl+e", "Recent files" , ':lua require("telescope.builtin").oldfiles{}<CR>'),
                dashboard.button( "ctrl+f", "Find anything" , ':Telescope live_grep<CR>'),
                dashboard.button( "q", "Quit NVIM" , ":qa<CR>"),
            }
            local handle = io.popen('fortune')
            local fortune = handle:read("*a")
            handle:close()
            dashboard.section.footer.val = fortune

            dashboard.config.opts.noautocmd = true

            vim.cmd[[autocmd User AlphaReady echo 'ready']]

            alpha.setup(dashboard.config)
        end
    }
end)
