return require("packer").startup(function()
    -- tools
    use "wbthomason/packer.nvim"

    -- git
    use "TimUntersberger/neogit"
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }

    -- lsp
    use 'neovim/nvim-lspconfig'
    use 'ray-x/lsp_signature.nvim'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'glepnir/lspsaga.nvim'
    use 'onsails/lspkind-nvim'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    -- use 'williamboman/mason.nvim'
    -- use 'williamboman/mason-lspconfig.nvim'

    -- syntax
    use 'tomlion/vim-solidity'
    use 'evanleck/vim-svelte'

    -- syntax
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
    }
    use "romgrk/nvim-treesitter-context"
    use { 'nvim-treesitter/nvim-treesitter-textobjects', after = { 'nvim-treesitter' } }


    -- navigation
    use "ThePrimeagen/harpoon"
    use "ggandor/leap.nvim"

    -- search
    use "nvim-lua/plenary.nvim"
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use { "nvim-telescope/telescope-file-browser.nvim" }

    -- code manipulation
    use {
        "kylechui/nvim-surround",
        config = function()
            require("nvim-surround").setup({})
        end
    }
    use "mbbill/undotree"
    use "windwp/nvim-ts-autotag"
    use "lukas-reineke/indent-blankline.nvim"
    use "terrortylor/nvim-comment"
    use {
	    "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    -- formatter
    use "jose-elias-alvarez/null-ls.nvim"

    -- colors
    use "shaunsingh/nord.nvim"
    use { 
      'olivercederborg/poimandres.nvim',
      config = function()
        require('poimandres').setup {
          -- leave this setup function empty for default config
          -- or refer to the configuration section
          -- for configuration options
        }
      end
    }
    use { "catppuccin/nvim", as = "catppuccin" }
    use "rebelot/kanagawa.nvim"
    use {'shaunsingh/oxocarbon.nvim', run = './install.sh'}
    use 'luochen1990/rainbow'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use { 
      'olivercederborg/poimandres.nvim',
      config = function()
        require('poimandres').setup {
          -- leave this setup function empty for default config
          -- or refer to the configuration section
          -- for configuration options
        }
      end
    }

    -- cool stuff
    use {
	    "Pocco81/true-zen.nvim",
	    config = function()
		    require("true-zen").setup {}
	    end,
    }
    use "preservim/vimux"
    use {
      "folke/twilight.nvim",
      config = function()
        require("twilight").setup {}
      end
    }
end)
