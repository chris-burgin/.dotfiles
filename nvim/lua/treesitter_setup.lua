require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
	incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gss",
      node_incremental = "gsi",
      node_decremental = "gsd",
    },
		indent = {
			enable = true,
		},
  },
}
