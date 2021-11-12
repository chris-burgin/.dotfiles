local util = require('lsp/_util')

local function format()
	vim.lsp.buf.formatting_sync(nil, 1500)
end

require'lspconfig'.tsserver.setup({
	on_attach = util.on_attach,
	commands = {
    TSFormat = {
      format,
      description = "Typescript Format File"
    }
  }
})

