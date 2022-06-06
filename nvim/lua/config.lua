return require("packer").startup(function()
  use {"wbthomason/packer.nvim"}
	use {"tpope/vim-commentary"}
	use {"tpope/vim-fugitive"}
	use {'kdheepak/lazygit.nvim'}
	use {"tpope/vim-sensible"}
	use {"tpope/vim-surround"}
	use {"tpope/vim-vinegar"}
	use {"chris-burgin/papercolor-theme", config = require("config-theme")}
	use {"hoob3rt/lualine.nvim", config = require("config-lualine")}
	use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate", config = require("config-treesitter")}
	use {"neovim/nvim-lspconfig", config = require("config-lsp")}
	use {"jose-elias-alvarez/null-ls.nvim", requires = {"nvim-lua/plenary.nvim", "lewis6991/gitsigns.nvim"}, config = require("config-null-ls")}
	use {"hrsh7th/nvim-cmp", requires = { "hrsh7th/vim-vsnip", "hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp" }, config = require("config-cmp")}	
	use {"onsails/lspkind-nvim"}
	use {"~/.fzf"}
	use {"junegunn/fzf.vim", config = require("config-fzf")}
  use {"mhinz/vim-signify"}
	use {"RRethy/vim-illuminate", config = require("config-illuminate")}
	use {"chris-burgin/query.nvim", requires = {{"nvim-lua/plenary.nvim"}}, config = require("config-query")}
	use {"chris-burgin/background.nvim", config = require("config-background")}
	use {"phaazon/hop.nvim", config = require("config-hop")}
	use {"junegunn/vim-easy-align"}
	use {"editorconfig/editorconfig-vim"}
	use {"folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons", config = require("config-trouble")}
end)
