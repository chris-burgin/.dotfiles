return function()
	local custom_papercolor_light = require'lualine.themes.papercolor_light'
	custom_papercolor_light.normal.a.bg = '#e4e4e4'
	custom_papercolor_light.normal.b.bg = '#0087af'
	custom_papercolor_light.inactive.a.bg = '#e4e4e4'
	custom_papercolor_light.inactive.b.bg = '#e4e4e4'
	custom_papercolor_light.inactive.c.bg = '#e4e4e4'

	require('lualine').setup({
		options = {
			theme = custom_papercolor_light,
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

