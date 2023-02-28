return function()
    vim.fn.sign_define("DiagnosticSignError",
                       {text = " ", texthl = "DiagnosticSignError"})
    vim.fn.sign_define("DiagnosticSignWarn",
                       {text = " ", texthl = "DiagnosticSignWarn"})
    vim.fn.sign_define("DiagnosticSignInfo",
                       {text = " ", texthl = "DiagnosticSignInfo"})
    vim.fn.sign_define("DiagnosticSignHint",
                       {text = "", texthl = "DiagnosticSignHint"})

    require("neo-tree").setup({
        filesystem = {follow_current_file = true, use_libuv_file_watcher = true},
        buffers = {follow_current_file = true}
    })

    vim.cmd([[nnoremap \ :NeoTreeRevealToggle<cr>]])
    vim.cmd([[nnoremap <leader>\ :NeoTreeFocus<cr>]])
end
