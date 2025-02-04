vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}); 
    use('nvim-treesitter/playground');
    use('ThePrimeagen/harpoon');
    use('mbbill/undotree');
    use('tpope/vim-fugitive');
    use('m4xshen/autoclose.nvim');
    use('sbdchd/neoformat');

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    use('mattn/emmet-vim');
    use('dense-analysis/ale');
    use('tpope/vim-surround');
    use('vim-airline/vim-airline');
    use('prisma/vim-prisma');
    use('42Paris/42header');
    use {
        'gelguy/wilder.nvim',
        config = function()
            local wilder = require('wilder')
            wilder.setup({
                modes = { ':', '/', '?' }
            })

            wilder.set_option('renderer', wilder.popupmenu_renderer(
                wilder.popupmenu_border_theme({
                    -- 'single', 'double', 'rounded' or 'solid'
                    -- can also be a list of 8 characters, see :h wilder#popupmenu_palette_theme() for more details
                    border = 'rounded',
                    max_height = '25%',      -- max height of the palette
                    min_height = 0,          -- set to the same as 'max_height' for a fixed height window
                    prompt_position = 'top', -- 'top' or 'bottom' to set the location of the prompt
                    reverse = 0,             -- set to 1 to reverse the order of the list, use in combination with 'prompt_position'
                    highlighter = wilder.basic_highlighter(),  -- Use basic highlighter
                    highlights = {
                        accent = wilder.make_hl('WilderAccent', 'Pmenu', {{a = 1}, {a = 1}, {foreground = '#F4468F'}}),
                        default = wilder.make_hl('WilderDefault', 'Pmenu', {{a = 1}, {a = 1}, {foreground = '#FFFFFF'}})
                    }
                })
            ))
        end
    }
end) 
