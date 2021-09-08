return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

	use 'tpope/vim-commentary'
	use 'tpope/vim-fugitive'
	use 'tpope/vim-sensible'
	use 'tpope/vim-surround'
	use 'tpope/vim-vinegar'


	use {'NLKNguyen/papercolor-theme', config = require('config-theme')}
	use {'hoob3rt/lualine.nvim', config = require('config-lualine')}

	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = require('config-treesitter')}

	use {'neovim/nvim-lspconfig', config = require('config-lsp')}
	use { 
		"hrsh7th/nvim-cmp", 
		requires = { 
			"hrsh7th/vim-vsnip", 
			"hrsh7th/cmp-buffer", 
			"hrsh7th/cmp-nvim-lsp"
		}, 
		config = require('config-cmp') 
	}	
	use 'onsails/lspkind-nvim'

	use '~/.fzf'
	use {'junegunn/fzf.vim', config = require('config-fzf')}

  use 'mhinz/vim-signify'

	use { 'chris-burgin/query.nvim', requires = {{'nvim-lua/plenary.nvim'}}, config = require('config-query')}
end)

