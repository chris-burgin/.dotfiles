require('lspconfig').diagnosticls.setup{
	filetypes = { "javascript", "javascript.jsx", "typescript", "typescriptreact" },
	init_options = {
		filetypes = {
			javascript = "eslint",
			["javascript.jsx"] = "eslint",
			javascriptreact = "eslint",
			typescriptreact = "eslint",
			typescript = "eslint",
			typescriptreact = "eslint",
		},
		formatFiletypes = {
      typescript = 'prettier',
      typescriptreact = 'prettier',
      javascript = 'prettier',
      javascriptreact = 'prettier',
      css = 'prettier',
      scss = 'prettier',
    },
		linters = {
			eslint = {
				sourceName = "eslint",
				command = "eslint_d",
				rootPatterns = { ".git" },
				debounce = 100,
				args = {
					"--cache",
					"--stdin",
					"--stdin-filename",
					"%filepath",
					"--format",
					"json",
				},
				sourceName = "eslint",
				parseJson = {
					errorsRoot = "[0].messages",
					line = "line",
					column = "column",
					endLine = "endLine",
					endColumn = "endColumn",
					message = "${message} [${ruleId}]",
					security = "severity",
				},
				securities = {
					[2] = "error",
					[1] = "warning",
				},
			},
		},
		formatters = {
      prettier = {
        command = './client/node_modules/.bin/prettier',
        args = { '--stdin-filepath', '%filepath' },
      },
    },
	},
}
