local util = {}

function is_typescript(ft)
	if ft == 'javascript' or ft == 'typescript' or ft == 'javascriptreact' or ft == 'typescriptreact' or ft == 'json' or ft == 'jsonc' then
		return true
	else
		return false
	end
end

function is_go(ft)
	if ft == 'go' then
		return true
	else
		return false
	end
end

function util.on_attach(client, bufnr)
	local ft = vim.bo.filetype

  if is_go(ft) then
    vim.cmd([[
      augroup fmt
        autocmd!
        autocmd BufWritePre * OrganizeImports
      augroup END
    ]])
  end

	if is_typescript(ft) then
    -- Disable formatting via tsserver because we're handling formatting via diagnosticls
    client.resolved_capabilities.document_formatting = false

    vim.cmd([[
      augroup fmt
        autocmd!
        autocmd BufWritePre * TSFormat
      augroup END
    ]])
  end

	-- Highlight word under cursor, see lua/config-illuminate.lua for more.
	require 'illuminate'.on_attach(client)
end

return util;
