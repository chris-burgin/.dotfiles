return function()
  local lspkind = require('lspkind')
  local cmp = require'cmp'
	local cmp_types = require"cmp.types.cmp"

  cmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
      end,
    },
    mapping = {
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
			['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp_types.SelectBehavior.Insert }), 
			['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp_types.SelectBehavior.Insert }),
    },
    sources = {
      { name = 'nvim_lsp' },
      { name = 'buffer' },
    },
    formatting = {
			format = lspkind.cmp_format({
				with_text = true, 
				menu = ({
					buffer = "[Buffer]",
					nvim_lsp = "[LSP]",
					luasnip = "[LuaSnip]",
					nvim_lua = "[Lua]",
					latex_symbols = "[Latex]",
				})
			})
    },
  })

  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
end

