nvim_lsp = require'lspconfig'

nvim_lsp.cssls.setup{on_attach=require'completion'.on_attach}
nvim_lsp.vuels.setup{on_attach=require'completion'.on_attach}
nvim_lsp.tsserver.setup{on_attach=require'completion'.on_attach}
nvim_lsp.rls.setup{on_attach=require'completion'.on_attach}
nvim_lsp.sumneko_lua.setup{on_attach=require'completion'.on_attach}
nvim_lsp.vimls.setup{on_attach=require'completion'.on_attach}
nvim_lsp.gopls.setup {on_attach=require'completion'.on_attach}

nvim_lsp.diagnosticls.setup{
	filetypes = { "javascript", "javascript.jsx", "typescript", "typescriptreact" };
	root_dir= nvim_lsp.util.root_pattern(
		"bvt",
		"client/src/js/app",
		"client/src/key_reset_tests",
		"client/src/tests",
		"client/src/vendor/onepassword",
		"client/src/vendor/test-rite",
		"client/src/vendor/web-workers",
		"scripts/team-builder"
	);
	init_options = {
		filetypes = {
			javascript = "eslint";
			["javascript.jsx"] = "eslint";
			javascriptreact = "eslint";
			typescriptreact = "eslint";
			typescript = "eslint";
			typescriptreact = "eslint";
		};
		linters = {
			eslint = {
				sourceName = "eslint";
				command = "eslint_d";
				rootPatterns = { ".git" };
				debounce = 100;
				args = {
					"--cache";
					"--stdin";
					"--stdin-filename";
					"%filepath";
					"--format";
					"json";
				};
				sourceName = "eslint";
				parseJson = {
					errorsRoot = "[0].messages";
					line = "line";
					column = "column";
					endLine = "endLine";
					endColumn = "endColumn";
					message = "${message} [${ruleId}]";
					security = "severity";
				};
				securities = {
					 [2] = "error";
					 [1] = "warning";
				};
			};
		};
	}
}
