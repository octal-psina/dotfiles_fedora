return require('packer').startup(function(use)
	-- There'are some of your pluggins down there
    use 'wbthomason/packer.nvim'
    -- Colorscheam
    use 'Mofiqul/dracula.nvim'
    -- Nvim tree
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
		config = function()
			require("nvim-tree").setup {}
		end
	}
    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
            end,
    }
    --- Lsp
    use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'
    -- Autocmplite  
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/nvim-cmp'
    -- Autocmplite snipets
    use { 'saadparwaiz1/cmp_luasnip' }
    use 'L3MON4D3/LuaSnip'
    -- Lualine 
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
        }
    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
	use {
		'NvChad/nvim-colorizer.lua',
		config = function()
			require("colorizer").setup {}
		end
	}
end)
