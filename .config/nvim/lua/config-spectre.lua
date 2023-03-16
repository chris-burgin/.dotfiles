return function()
    require("spectre").setup()

    local spectre = require("spectre")
    vim.keymap.set("n", "<leader>sr", spectre.open, {})
    vim.keymap.set("n", "<leader>sw",
                   function() spectre.open_visual({select_word = true}) end, {})
end
