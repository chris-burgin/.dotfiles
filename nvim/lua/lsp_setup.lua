-- You need to run `:LspInstall [language]` to get started with the language
-- below or follow the install instructions for each language here:
-- https://github.com/neovim/nvim-lspconfig#configurations.
--
-- For gopls you will need to install `golang-x-tools-gopls`.

lspconfig = require'lspconfig'

lspconfig.cssls.setup{on_attach=require'completion'.on_attach}
lspconfig.vuels.setup{on_attach=require'completion'.on_attach}
lspconfig.tsserver.setup{on_attach=require'completion'.on_attach}
lspconfig.rls.setup{on_attach=require'completion'.on_attach}
lspconfig.sumneko_lua.setup{on_attach=require'completion'.on_attach}
lspconfig.vimls.setup{on_attach=require'completion'.on_attach}
lspconfig.gopls.setup {on_attach=require'completion'.on_attach}

-- removed until we fix our setup
-- lspconfig.diagnosticls.setup{
-- 	filetypes = { "javascript", "javascript.jsx", "typescript", "typescriptreact" };
-- 	root_dir= lspconfig.util.root_pattern(
-- 		"bvt",
-- 		"client/src/js/app",
-- 		"client/src/key_reset_tests",
-- 		"client/src/tests",
-- 		"client/src/vendor/onepassword",
-- 		"client/src/vendor/test-rite",
-- 		"client/src/vendor/web-workers",
-- 		"scripts/team-builder"
-- 	);
-- 	init_options = {
-- 		filetypes = {
-- 			javascript = "eslint";
-- 			["javascript.jsx"] = "eslint";
-- 			javascriptreact = "eslint";
-- 			typescriptreact = "eslint";
-- 			typescript = "eslint";
-- 			typescriptreact = "eslint";
-- 		};
-- 		linters = {
-- 			eslint = {
-- 				sourceName = "eslint";
-- 				command = "eslint_d";
-- 				rootPatterns = { ".git" };
-- 				debounce = 100;
-- 				args = {
-- 					"--cache";
-- 					"--stdin";
-- 					"--stdin-filename";
-- 					"%filepath";
-- 					"--format";
-- 					"json";
-- 				};
-- 				sourceName = "eslint";
-- 				parseJson = {
-- 					errorsRoot = "[0].messages";
-- 					line = "line";
-- 					column = "column";
-- 					endLine = "endLine";
-- 					endColumn = "endColumn";
-- 					message = "${message} [${ruleId}]";
-- 					security = "severity";
-- 				};
-- 				securities = {
-- 					 [2] = "error";
-- 					 [1] = "warning";
-- 				};
-- 			};
-- 		};
-- 	}
-- }

-- mappings 
vim.api.nvim_set_keymap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<CR>', {noremap = true, silent = true });

-- -- hover style commands
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'sd', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', {noremap = true, silent = true });

-- -- goto style commands
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.implementation()<CR>', {noremap = false, silent = true });
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'gY', '<cmd>lua vim.lsp.buf.type_definition()<CR>', {noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'gn', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', {noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua require\'telescope.builtin\'.lsp_references{}<CR>', {noremap = true, silent = true });

-- autofix commands
vim.api.nvim_set_keymap('n', 'qf', '<cmd>lua vim.lsp.buf.code_action()<CR>', {noremap = true, silent = true });
