return require('packer').startup(function ()
    vim.cmd [[
        hi Normal guibg=#22272e
    ]]
    
    -- plugin manager
    use 'wbthomason/packer.nvim'

    -- themes
    use 'EdenEast/nightfox.nvim'
    use 'casperstorm/sort-hvid.vim'
    use 'michaeldyrynda/carbon'
    use 'arcticicestudio/nord-vim'
    use 'flazz/vim-colorschemes'
    use ({ 'projekt0n/github-nvim-theme', tag = 'v0.0.7' })

    use({
    'NTBBloodbath/doom-one.nvim',
    setup = function()
        -- Add color to cursor
		vim.g.doom_one_cursor_coloring = false
		-- Set :terminal colors
		vim.g.doom_one_terminal_colors = true
		-- Enable italic comments
		vim.g.doom_one_italic_comments = false
		-- Enable TS support
		vim.g.doom_one_enable_treesitter = true
		-- Color whole diagnostic text or only underline
        vim.g.doom_one_diagnostics_text_color = false
		-- Enable transparent background
		vim.g.doom_one_transparent_background = false

        -- Pumblend transparency
		vim.g.doom_one_pumblend_enable = false
		vim.g.doom_one_pumblend_transparency = 20

        -- Plugins integration
		vim.g.doom_one_plugin_neorg = true
		vim.g.doom_one_plugin_barbar = false
		vim.g.doom_one_plugin_telescope = false
		vim.g.doom_one_plugin_neogit = true
		vim.g.doom_one_plugin_nvim_tree = true
		vim.g.doom_one_plugin_dashboard = true
		vim.g.doom_one_plugin_startify = true
		vim.g.doom_one_plugin_whichkey = true
		vim.g.doom_one_plugin_indent_blankline = true
		vim.g.doom_one_plugin_vim_illuminate = true
		vim.g.doom_one_plugin_lspsaga = false
	end,
	config = function()
        vim.cmd("colorscheme github_dark")
    end,
})

    use 'tpope/vim-vinegar' -- improves filetree
    use 'tpope/vim-commentary' -- shortcuts to comment things
    use 'nvim-lualine/lualine.nvim' -- status line
    use 'kyazdani42/nvim-web-devicons' -- nice icons
    use 'skwp/greplace.vim' -- search and replace
    use 'gpanders/editorconfig.nvim' -- editorconfig
    use 'windwp/nvim-autopairs' -- autopairs for characters.
    use 'airblade/vim-gitgutter' -- git functionality on gutter
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
