require('plugins.lualine')
require('plugins.nightfox')
require('plugins.treesitter')
require('plugins.nvim-autopairs')
require('plugins.coc')
require('plugins.telescope')
require('plugins.todo-comments')

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
    use 'gpanders/editorconfig.nvim' -- editorconfig
    use 'windwp/nvim-autopairs' -- autopairs for characters.
    use 'airblade/vim-gitgutter' -- git functionality on gutter
    use 'folke/todo-comments.nvim' -- TODO comments
    use {'neoclide/coc.nvim', branch = 'release'} -- intellesense.

    -- fzf file finder like ctrl+p
    use {'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    } use 'fannheyward/telescope-coc.nvim'

    -- better syntax highlighting
    use {'nvim-treesitter/nvim-treesitter',
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

            dashboard.config.opts.noautocmd = true

            vim.cmd[[autocmd User AlphaReady echo 'ready']]

            alpha.setup(dashboard.config)
        end
    }
end)
