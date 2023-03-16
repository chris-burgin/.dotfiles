return function()
    require("lualine").setup({
        options = {section_separators = "", component_separators = ""},
        sections = {
            lualine_a = {"mode"},
            lualine_b = {{"filename", path = 1}},
            lualine_c = {},
            lualine_x = {},
            lualine_y = {
                "branch", {"diagnostics", sources = {"nvim_diagnostic"}}
            },
            lualine_z = {"location"}
        },
        inactive_sections = {
            lualine_a = {"mode"},
            lualine_b = {{"filename", path = 1}},
            lualine_c = {},
            lualine_x = {},
            lualine_y = {
                "branch", {"diagnostics", sources = {"nvim_diagnostic"}}
            },
            lualine_z = {"location"}
        }
    })
end
