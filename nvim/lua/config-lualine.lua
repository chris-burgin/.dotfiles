local custom_papercolor_light = require'lualine.themes.papercolor_light'
custom_papercolor_light.normal.a.bg = '#e4e4e4'
custom_papercolor_light.normal.b.bg = '#0087af'
-- custom_papercolor_light.inactive.a.bg = '#005f87'
-- custom_papercolor_light.inactive.b.bg = '#005f87'
-- custom_papercolor_light.inactive.c.bg = '#005f87'
custom_papercolor_light.inactive.a.bg = '#e4e4e4'
custom_papercolor_light.inactive.b.bg = '#e4e4e4'
custom_papercolor_light.inactive.c.bg = '#e4e4e4'
-- custom_papercolor_light.inactive.a.fg = '#efefef'
-- custom_papercolor_light.inactive.b.fg = '#efefef'
-- custom_papercolor_light.inactive.c.fg = '#efefef'

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
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {'location'}
  },
})
