return function()
	require'nvim-treesitter.configs'.setup {
		ensure_installed = "maintained",
		highlight = {
			enable = true,
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
end
