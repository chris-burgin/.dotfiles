local util = {}

function util.on_attach(client, bufnr)
	local ft = vim.bo.filetype
  if ft == 'go' then
    vim.cmd([[
      augroup fmt
        autocmd!
        autocmd BufWritePre * OrganizeImports
      augroup END
    ]])
  end
end

return util;
