local util = require('lsp/_util')

require'lspconfig'.tsserver.setup({
	on_attach = util.on_attach,
})

