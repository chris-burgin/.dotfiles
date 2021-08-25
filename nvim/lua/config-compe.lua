return function()
	require'compe'.setup{
		enabled = true;
		autocomplete = true;
		debug = false;
		min_length = 1;
		preselect = 'enable';
		throttle_time = 80;
		source_timeout = 200;
		incomplete_delay = 400;
		allow_prefix_unmatch = false;
		max_abbr_width = 100;
		max_kind_width = 100;
		max_menu_width = 100;

		source = {
			path = true;
			buffer = true;
			calc = true;
			vsnip = true;
			nvim_lsp = true;
			nvim_lua = true;
			spell = true;
			tags = true;
			snippets_nvim = true;
		};
	}

	vim.o.completeopt = "menu,menuone,noselect"
	vim.api.nvim_set_keymap('i', '<C-Space>', 'compe#complete()', {expr = true, silent = true})
	vim.api.nvim_set_keymap('i', '<C-e>', 'compe#close(\'<C-e>\')', {expr = true, silent = true})
	vim.api.nvim_set_keymap('i', '<CR>', 'compe#confirm(\'<CR>\')', {expr = true, silent = true})
end

