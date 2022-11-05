vim.cmd [[packadd packer.nvim]]

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	-- Color schemes
	
	--use 'sainnhe/everforest'
	use 'dracula/vim'

	-- UI
	use 'nvim-lualine/lualine.nvim'
	use 'ryanoasis/vim-devicons'
	use 'glepnir/dashboard-nvim'
	use 'vim-airline/vim-airline-themes'
	use 'Yggdroot/indentLine'
	use 'DanilaMihailov/beacon.nvim'
	--use 'Shatur/neovim-session-manager'
	--use {
	--  'romgrk/barbar.nvim',
	--  requires = {'kyazdani42/nvim-web-devicons'}
	--}

	-- Files
	use {
		'nvim-tree/nvim-tree.lua',
	  	requires = {
	  	      'nvim-tree/nvim-web-devicons', -- optional, for file icons
	  	}
	}
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use { "nvim-telescope/telescope-file-browser.nvim" }
	use 'lambdalisue/suda.vim'

	-- git
	use 'tpope/vim-fugitive'
	use 'junegunn/gv.vim'
	use {
		"folke/which-key.nvim",
		config = function()
		require("which-key").setup {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		}
		end
	}

	-- Code
	use 'norcalli/nvim-colorizer.lua'
	use 'mfussenegger/nvim-dap'
	use 'preservim/tagbar'
	use({
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
	})
	use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}
	 -- lsp
	 use {
	   'VonHeikemen/lsp-zero.nvim',
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

	
	--use 'lilydjwg/colorizer'

end)

