return function()
    vim.g.Illuminate_delay = 200

    vim.api.nvim_command([[ hi def link LspReferenceText CursorLine ]])
    vim.api.nvim_command([[ hi def link LspReferenceWrite CursorLine ]])
    vim.api.nvim_command([[ hi def link LspReferenceRead CursorLine ]])

    local illuminate = require("illuminate")

    vim.keymap.set("n", "<leader>n",
                   function() illuminate.next_reference({wrap = true}) end)
    vim.keymap.set("n", "<leader>p", function()
        illuminate.next_reference({reverse = true, wrap = true})
    end)
end
