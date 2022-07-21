return function()
	require("null-ls").setup({
			sources = {
					require("null-ls").builtins.formatting.stylua,

					require("null-ls").builtins.formatting.stylelint,
					require("null-ls").builtins.diagnostics.stylelint,

					require("null-ls").builtins.formatting.prettierd,

					require("null-ls").builtins.diagnostics.eslint_d,
					require("null-ls").builtins.code_actions.eslint_d,
					require("null-ls").builtins.formatting.eslint_d,

					require("null-ls").builtins.completion.spell,

					require("null-ls").builtins.code_actions.gitsigns,

					
			},
			-- you can reuse a shared lspconfig on_attach callback here
			on_attach = function(client, bufnr)
					if client.supports_method("textDocument/formatting") then
							vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
							vim.api.nvim_create_autocmd("BufWritePre", {
									group = augroup,
									buffer = bufnr,
									callback = function()
											-- vim.lsp.buf.formatting_sync()
											-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
											vim.lsp.buf.format({ bufnr = bufnr })
									end,
							})
					end
			end,
	})
end
