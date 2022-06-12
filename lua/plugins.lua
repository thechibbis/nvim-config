local function get_config(name)
	return string.format('require("setup/%s")', name)
end

return require("packer").startup(function()

	-- self fuck
    	use("wbthomason/packer.nvim")

        -- Best Partner xD
	use("github/copilot.vim")

	-- best line
	use {
  		'nvim-lualine/lualine.nvim',
	}
	-- telescope to see the sky
        use({
                "nvim-telescope/telescope.nvim",
                requires = { { "nvim-lua/plenary.nvim" } },
        })
	-- neo tree
	use {
  		"nvim-neo-tree/neo-tree.nvim",
    		branch = "v2.x",
    		requires = {
      			"nvim-lua/plenary.nvim",
      			"kyazdani42/nvim-web-devicons",
      			"MunifTanjim/nui.nvim",
    }
  }
	-- Bufferline
	use {
		'akinsho/bufferline.nvim',
		  tag = "v2.*",
		requires =
			'kyazdani42/nvim-web-devicons'
	}
	use({
		{
		"williamboman/nvim-lsp-installer",
		config = function()
			require("nvim-lsp-installer").setup({})
		end,
	},
		{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.sumneko_lua.setup({})
			lspconfig.pyright.setup({})
			lspconfig.clangd.setup({})
			lspconfig.dockerls.setup({})
			lspconfig.rust_analyzer.setup({})
			end,
		},
	})
	-- treesiter
	use {
		"nvim-treesitter/nvim-treesitter",
		"nvim-treesitter/nvim-treesitter-textobjects",
	}
	use {
		"L3MON4D3/LuaSnip",
	}
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-nvim-lsp",
			"quangnguyen30192/cmp-nvim-ultisnips",
			"hrsh7th/cmp-nvim-lua",
			"octaltree/cmp-look",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-calc",
			"f3fora/cmp-spell",
			"hrsh7th/cmp-emoji",
		},
		config = get_config("cmp"),
	})

	-- devicons
	use("kyazdani42/nvim-web-devicons")

	-- open and close mf
        use("jiangmiao/auto-pairs")

	-- formater yay
        use("sbdchd/neoformat")

	-- my friends are friendiest friends
        use("andweeb/presence.nvim")

	-- turtle
	use({
      		"goolord/alpha-nvim",
      		config = function()
      	end,
    })
	-- alert me about cosmic radiation
        use("rcarriga/nvim-notify")
	require("notify")("THECHIBBIS ON TOP!!")
	vim.notify = require("notify")

	-- vim colorschemes
	use("Shatur/neovim-ayu")
	use('folke/tokyonight.nvim')

end)
