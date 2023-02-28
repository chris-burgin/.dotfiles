return function()
    require("trouble").setup({})

    vim.api.nvim_set_keymap("n", "<leader>tt", ":TroubleToggle<CR>",
                            {noremap = true, silent = true})
    vim.api.nvim_set_keymap("n", "<leader>tn",
                            '<cmd>lua require("trouble").next({skip_groups = true, jump = true})<CR>',
                            {noremap = true, silent = true})
    vim.api.nvim_set_keymap("n", "<leader>tp",
                            '<cmd>lua require("trouble").previous({skip_groups = true, jump = true})<CR>',
                            {noremap = true, silent = true})
end
