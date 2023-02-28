return function()
    require("spectre").setup()

    vim.api.nvim_set_keymap("n", "<leader>S",
                            "<cmd>lua require('spectre').open()<CR>",
                            {noremap = true, silent = true})

    vim.api.nvim_set_keymap("n", "<leader>sw",
                            "<cmd>lua require('spectre').open_visual({select_word=true})<CR>",
                            {noremap = true, silent = true})
end
