return function()
    require("telescope").setup({
        defaults = {path_display = {"smart"}},
        pickers = {
            find_files = {theme = "dropdown"},
            live_grep = {theme = "dropdown"},
            buffers = {theme = "dropdown"},
            help_tags = {theme = "dropdown"},
            lsp_definitions = {theme = "dropdown"},
            lsp_implementations = {theme = "dropdown"},
            lsp_references = {theme = "dropdown"},
            lsp_type_definitions = {theme = "dropdown"}
        },
        extensions = {
            ["ui-select"] = {require("telescope.themes").get_cursor({})}
        }
    })

    require("telescope").load_extension("fzf")
    require("telescope").load_extension("ui-select")

    -- kepmaps
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
    vim.keymap.set("n", "<leader>ss", builtin.live_grep, {})
    vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
    vim.keymap.set("n", "gd", builtin.lsp_definitions, {})
    vim.keymap.set("n", "gD", builtin.lsp_implementations, {})
    vim.keymap.set("n", "gY", builtin.lsp_type_definitions, {})
    vim.keymap.set("n", "gr", builtin.lsp_references, {})
end
