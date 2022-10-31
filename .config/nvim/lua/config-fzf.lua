return function()
	vim.api.nvim_set_keymap('n', '<leader>ff', ':GFiles<cr>', {})
	vim.api.nvim_set_keymap('n', ';', ':Buffers<cr>', {})
end
