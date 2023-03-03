local function config(name) return require("config-" .. name) end

return require("packer").startup(function()
    -- Resets
    use("tpope/vim-vinegar")
    use("tpope/vim-sensible")

    -- Colorscheme
    use({"EdenEast/nightfox.nvim", config = config("theme")})

    -- UI
    use({"goolord/alpha-nvim", config = config("alpha")})
    use({"hoob3rt/lualine.nvim", config = config("lualine")})

    -- Treesitter
    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = config("treesitter")
    })

    -- LSP
    use({"neovim/nvim-lspconfig", config = config("lsp")})
    use({
        "jose-elias-alvarez/null-ls.nvim",
        requires = {"nvim-lua/plenary.nvim"},
        config = config("null-ls")
    })
    use({
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/vim-vsnip", "hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp"
        },
        config = config("cmp")
    })

    -- Editor
    use("mileszs/ack.vim")
    use("onsails/lspkind-nvim")
    use({
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = config("trouble")
    })
    use({
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim"
        },
        config = config("neotree")
    })
    use({"norcalli/nvim-colorizer.lua", config = config("colorizer")})
    use({
        "windwp/nvim-spectre",
        requires = {"nvim-lua/plenary.nvim"},
        config = config("spectre")
    })
    use({"LunarVim/peek.lua", config = config("peek")})
    use({"RRethy/vim-illuminate", config = config("illuminate")})
    use({"editorconfig/editorconfig-vim"})
    use({"junegunn/fzf.vim", config = config("fzf")})
    use("~/.fzf")
    use({"lewis6991/gitsigns.nvim", config = config("gitsigns")})

    -- Coding
    use("tpope/vim-surround")
    use("tpope/vim-commentary")
    use({"tpope/vim-fugitive", config = config("fugitive")})

    -- Util
    use("wbthomason/packer.nvim")
end)
