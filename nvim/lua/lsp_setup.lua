lspconfig = require'lspconfig'

lspconfig.cssls.setup{}
lspconfig.tsserver.setup{}
lspconfig.gopls.setup {}

lspconfig.diagnosticls.setup{
	filetypes = { "javascript", "javascript.jsx", "typescript", "typescriptreact" };
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

require('lspkind').init{
	preset = 'codicons',
	symbol_map = {
      Text = '',
      Method = 'ƒ',
      Function = '',
      Constructor = '',
      Variable = '',
      Field = '',
      Class = '',
      Interface = 'ﰮ',
      Module = '',
      Property = '',
      Unit = '',
      Value = '',
      Enum = '了',
      Keyword = '',
      Snippet = '﬌',
      Color = '',
      File = '',
      Folder = '',
      EnumMember = '',
      Constant = '',
      Struct = ''
    },
}

-- mappings
vim.api.nvim_set_keymap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<CR>', {noremap = true, silent = true });

-- -- hover commands
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'sd', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', {noremap = true, silent = true });

-- -- goto commands
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.implementation()<CR>', {noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'gY', '<cmd>lua vim.lsp.buf.type_definition()<CR>', {noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', {noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'gn', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', {noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'gp', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', {noremap = true, silent = true });

-- autofix commands
vim.api.nvim_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', {noremap = true, silent = true });

-- location and quickfix list commands
vim.api.nvim_set_keymap('n', '<leader>le', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', {noremap = true, silent = true });
vim.api.nvim_set_keymap('n', '<leader>ls', '<cmd>lua vim.lsp.buf.document_symbol()<CR>', {noremap = true, silent = true });


