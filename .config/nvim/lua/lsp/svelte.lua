local util = require("lsp/_util")

require("lspconfig").svelte.setup({on_attach = util.on_attach})
