return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

	use 'tpope/vim-commentary'
	use 'tpope/vim-sensible'
	use 'tpope/vim-surround'
	use 'tpope/vim-vinegar'
	use 'tpope/vim-fugitive'

	use 'NLKNguyen/papercolor-theme'
	use 'hoob3rt/lualine.nvim'

  use 'mhinz/vim-signify'

	use { 
		'chris-burgin/query.nvim', 
		requires = {{'nvim-lua/plenary.nvim'}}
	}

	use '~/.fzf'
	use 'junegunn/fzf.vim'

	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-compe'
	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
	use 'onsails/lspkind-nvim'
end)


