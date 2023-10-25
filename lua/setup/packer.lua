return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	-- debugger
	use 'mfussenegger/nvim-dap'

	-- autopairs
	use 'windwp/nvim-autopairs'

	-- autotag
	use 'windwp/nvim-ts-autotag'


	use { -- LSP Configuration & Plugins
		'neovim/nvim-lspconfig',
		requires = {
			-- Automatically install LSPs to stdpath for neovim
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',
			-- Useful status updates for LSP
			{'j-hui/fidget.nvim', tag = "legacy"},

			-- Additional lua configuration, makes nvim stuff amazing
			'folke/neodev.nvim',
		},
	}
	use { -- Autocompletion
		'hrsh7th/nvim-cmp',
		requires = {
			'hrsh7th/cmp-nvim-lsp',
			{'L3MON4D3/LuaSnip', run = "make install_jsregexp"},
			'saadparwaiz1/cmp_luasnip',
			"rafamadriz/friendly-snippets"
		},
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		dependencies = {
		'nvim-treesitter/nvim-treesitter-textobjects',
		},
		build = ':TSUpdate',
	}


	-- Git related plugins
	use 'tpope/vim-fugitive'
	use 'tpope/vim-rhubarb'
	use 'lewis6991/gitsigns.nvim'

	use 'navarasu/onedark.nvim' -- Theme inspired by Atom
	use 'nvim-lualine/lualine.nvim' -- Fancier statusline
	use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank lines
	use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines
	use 'tpope/vim-sleuth' -- Detect tabstop and shiftwidth automatically

	-- Fuzzy Finder (files, lsp, etc)
	use { 'nvim-telescope/telescope.nvim', branch = '0.1.x', requires = { 'nvim-lua/plenary.nvim' } }

	-- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 }

end)
