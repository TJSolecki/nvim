--builtin.find_files, builtin.find_files,  Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("gleam-lang/gleam.vim")
	use("airblade/vim-gitgutter")
	use("norcalli/nvim-colorizer.lua")
	use({ "dccsillag/magma-nvim", run = ":UpdateRemotePlugins" })
	use("goerz/jupytext.vim")
	use("rust-lang/rust.vim")
	use("nvimtools/none-ls.nvim")
	use("folke/neoconf.nvim")
	use("wbthomason/packer.nvim")
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("fladson/vim-kitty")
	use("tamelion/neovim-molokai")
	use({ "rose-pine/neovim", as = "rose-pine" })
	use({
		"nvim-treesitter/nvim-treesitter",
		commit = "cc360a9",
	})
	use("m4xshen/autoclose.nvim")
	use("windwp/nvim-ts-autotag")
	use("tpope/vim-commentary")
	use("xiyaowong/transparent.nvim")
	use("mbbill/undotree")
	use("shaunsingh/nord.nvim")
	use("tpope/vim-fugitive")
	use("theprimeagen/harpoon")
	use("simrat39/rust-tools.nvim")
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ -- Optional
				"williamboman/mason.nvim",
				run = function()
					pcall(vim.cmd, "MasonUpdate")
				end,
			},
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
		},
	})
end)
