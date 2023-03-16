return function()
    local trouble = require("trouble")
    trouble.setup()

    vim.keymap.set("n", "<leader>tt", trouble.toggle, {})
end
