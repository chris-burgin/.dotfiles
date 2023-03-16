return function()
    local options = {rgb_fn = true, hsl_fn = true, css = true}

    require("colorizer").setup({
        css = options,
        scss = options,
        json = options,
        md = options
    })
end
