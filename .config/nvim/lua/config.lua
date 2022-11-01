return require("packer").startup(function()
	use {"EdenEast/nightfox.nvim", config = require("config-theme") }
	use {"RRethy/vim-illuminate", config = require("config-illuminate")}
	use {"editorconfig/editorconfig-vim"}
	use {"folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons", config = require("config-trouble")}
	use {"hoob3rt/lualine.nvim", config = require("config-lualine")}
	use {"hrsh7th/nvim-cmp", requires = { "hrsh7th/vim-vsnip", "hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp" }, config = require("config-cmp")}	
	use {"jose-elias-alvarez/null-ls.nvim", requires = {"nvim-lua/plenary.nvim"}, config = require("config-null-ls")}
	use {"junegunn/fzf.vim", config = require("config-fzf")}
	use {"lewis6991/gitsigns.nvim", config = require("config-gitsigns")}
	use {"neovim/nvim-lspconfig", config = require("config-lsp")}
	use {"norcalli/nvim-colorizer.lua", config = require("config-colorizer")}
	use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate", config = require("config-treesitter")}
	use {"onsails/lspkind-nvim"}
	use {"tpope/vim-commentary"}
	use {"tpope/vim-fugitive", config = require("config-fugitive")}
	use {"tpope/vim-sensible"}
	use {"tpope/vim-surround"}
	use {"tpope/vim-vinegar"}
	use {"~/.fzf"}
	use {'kdheepak/lazygit.nvim'}
  use {"wbthomason/packer.nvim"}
	use {"mileszs/ack.vim"}
end)
