return function()
    local gitsigns = require("gitsigns")
    gitsigns.setup()

    vim.keymap.set("n", "<leader>b",
                   function() gitsigns.blame_line({full = true}) end, {})
end
