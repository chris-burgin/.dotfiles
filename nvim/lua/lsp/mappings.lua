-- hover commands
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'sd', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', {noremap = true, silent = true });

-- goto commands
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.implementation()<CR>', {noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'gY', '<cmd>lua vim.lsp.buf.type_definition()<CR>', {noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', {noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'gn', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', {noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'gp', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', {noremap = true, silent = true });

-- actions
vim.api.nvim_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', {noremap = true, silent = true });
vim.api.nvim_set_keymap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<CR>', {noremap = true, silent = true });

-- insert mode commands
vim.api.nvim_set_keymap('i', '<C-K>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', {noremap = true, silent = true });
