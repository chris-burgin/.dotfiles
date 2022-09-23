return function()
	vim.api.nvim_set_keymap('n', '<leader>fgd', ':Gvdiff<CR>', {noremap = true, silent = true });
end

