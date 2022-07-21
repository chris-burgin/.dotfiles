return function()
	require('lualine').setup({
		options = {
			section_separators = '', 
			component_separators = '',
		},
		sections = {
			lualine_a = {'mode'},
			lualine_b = {{'filename', path=1}, },
			lualine_c = {},
			lualine_x = {},
			lualine_y = {'branch'},
			lualine_z = {{'diagnostics', sources = {'nvim_diagnostic'}}, 'location'}
		},
		inactive_sections = {
			lualine_a = {'mode'},
			lualine_b = {{'filename', path=1}},
			lualine_c = {},
			lualine_x = {},
			lualine_y = {'branch'},
			lualine_z = {'location'}
		},
	})
end

