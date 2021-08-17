local util = require('lsp/_util')

require'lspconfig'.tsserver.setup{
	on_attach = util.on_attach,
}

local function format()
	-- imports don't sort in order
	-- local params = {
	-- 	command = '_typescript.organizeImports',
	-- 	arguments = { vim.api.nvim_buf_get_name(0) },
	-- 	title = '',
	-- }
	-- vim.lsp.buf_request_sync(vim.api.nvim_get_current_buf(), 'workspace/executeCommand', params, 1500)
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

