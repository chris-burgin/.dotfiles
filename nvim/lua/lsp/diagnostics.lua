require('lspconfig').diagnosticls.setup{
	filetypes = { 
		"javascript", 
		"javascript.jsx",
		"typescript",
		"typescriptreact",
		"scss",
		"css", 
	},
	init_options = {
		filetypes = {
			javascript = "eslint",
			["javascript.jsx"] = "eslint",
			javascriptreact = "eslint",
			typescriptreact = "eslint",
			typescript = "eslint",
			typescriptreact = "eslint",
			scss = "stylelint",
      css = "stylelint",
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
				rootPatterns = { ".eslintrc.yml" },
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
					message = "[eslint] ${message} (${ruleId}) ",
					security = "severity",
				},
				securities = {
					[2] = "error",
					[1] = "warning",
				},
			},
			stylelint = {
        command = './node_modules/.bin/stylelint',
        rootPatterns = { '.stylelintrc.yml' },
        debounce = 100,
        args = { '--formatter', 'json', '--stdin-filename', '%filepath' },
        sourceName = 'stylelint',
        parseJson = {
          errorsRoot = '[0].warnings',
          line = 'line',
          column = 'column',
          message = '[stylelint] ${text}',
          security = 'severity',
        },
        securities = {
          error = 'error',
          warning = 'warning',
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
