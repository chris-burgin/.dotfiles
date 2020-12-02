-- local popup = require('popup') 

-- function map(tbl, f)
--     local t = {}
--     for k,v in pairs(tbl) do
--         t[k] = f(v)
--     end
--     return t
-- end

-- function show_errors_select()

-- end

-- function show_errors()
-- 	local errors = vim.lsp.diagnostic.get_all()
-- 	local string_errors = map(errors, function(error) return error.message end)

-- 	local opts = { }
-- 	local win_id = popup.create(string_errors, opts)
-- 	local buffer = vim.api.nvim_win_get_buf(win_id)

-- 	vim.api.nvim_buf_set_keymap(buffer, 'n', '<cr>', 'lua show_errors_select(), {}) 
-- end

