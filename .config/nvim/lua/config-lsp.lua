return function()
    -- languages
    require("lsp/golang")
    require("lsp/css")
    require("lsp/typescript")
    require("lsp/svelte")

    -- mappings
    vim.keymap.set("n", "sd", vim.diagnostic.open_float, {})
    vim.keymap.set("n", "gn", vim.diagnostic.goto_next, {})
    vim.keymap.set("n", "gp", vim.diagnostic.goto_prev, {})
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, {})
    vim.keymap.set("n", "<C-K>", vim.lsp.buf.signature_help, {})

    -- icons
    require("lspkind").init({
        preset = "codicons",
        symbol_map = {
            Text = "",
            Method = "ƒ",
            Function = "",
            Constructor = "",
            Variable = "",
            Field = "",
            Class = "",
            Interface = "ﰮ",
            Module = "",
            Property = "",
            Unit = "",
            Value = "",
            Enum = "了",
            Keyword = "",
            Snippet = "﬌",
            Color = "",
            File = "",
            Folder = "",
            EnumMember = "",
            Constant = "",
            Struct = ""
        }
    })
end
