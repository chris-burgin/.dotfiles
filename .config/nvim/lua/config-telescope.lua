return function()
    require("telescope").setup({})
    require("telescope").load_extension("fzf")
    require("telescope").load_extension("ui-select")

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
    vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

    -- lsp
    vim.keymap.set("n", "gd", builtin.lsp_definitions, {})
    vim.keymap.set("n", "gD", builtin.lsp_implementations, {})
    vim.keymap.set("n", "gY", builtin.lsp_type_definitions, {})
    vim.keymap.set("n", "gr", builtin.lsp_references, {})
end
