vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	
	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	
	-- Tokyo Night colorscheme
	use({
		"folke/tokyonight.nvim",
		config = function()
			require("config.colorscheme")
		end,
	})
	
	-- Required plugins
	use("MunifTanjim/nui.nvim")
	use("MeanderingProgrammer/render-markdown.nvim")
	
	-- Supermaven AI
	use({
		"supermaven-inc/supermaven-nvim",
		config = function()
			require("supermaven-nvim").setup({})
		end,
	})
	
	-- Optional dependencies
	use("nvim-tree/nvim-web-devicons")
	use("HakonHarnes/img-clip.nvim")
	use("zbirenbaum/copilot.lua")
	use("stevearc/dressing.nvim")
	use("folke/snacks.nvim")
	
	-- Treesitter for better syntax highlighting
	use({
		"nvim-treesitter/nvim-treesitter", 
		run = ":TSUpdate",
		config = function()
			require("config.treesitter")
		end,
	})
	
	-- LSP Support (using lsp-zero for easier configuration)
	use({
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	})
end)
