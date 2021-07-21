local util = require('lsp/_util')

require'lspconfig'.cssls.setup{
	on_attach = util.on_attach,
}
