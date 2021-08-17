local custom_papercolor_light = require'lualine.themes.papercolor_light'
custom_papercolor_light.normal.a.bg = '#e4e4e4'
custom_papercolor_light.normal.b.bg = '#0087af'

require('lualine').setup({
	options = {theme = custom_papercolor_light},
	sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {'location'}
  },
	inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {}
  },
})
