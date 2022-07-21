return function()
	require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }

	vim.api.nvim_set_keymap('n', '<Leader>hc', "<cmd>HopChar1<cr>", {})
	vim.api.nvim_set_keymap('n', '<Leader>hw', "<cmd>HopWord<cr>", {})
	vim.api.nvim_set_keymap('n', '<Leader>hp', "<cmd>HopPattern<cr>", {})
end
