--builtin.find_files, builtin.find_files,  Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
  use("fladson/vim-kitty")
  use("sainnhe/vim-color-desert-night")
	use('tamelion/neovim-molokai')
	use({ 'rose-pine/neovim', as = 'rose-pine' })
	use (
	'nvim-treesitter/nvim-treesitter',
	{ run = ':TSUpdate' }
	)
  use('tpope/vim-commentary')
  use('xiyaowong/transparent.nvim')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	use('theprimeagen/harpoon')
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
			'williamboman/mason.nvim',
			run = function()
				pcall(vim.cmd, 'MasonUpdate')
			end,
		},
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},     -- Required
		{'hrsh7th/cmp-nvim-lsp'}, -- Required
		{'L3MON4D3/LuaSnip'},     -- Required
	}
}
end)
