return function()
	local opts = { noremap = true, silent = true }
	-- I used `gl` to refer to `look` here because I have `gp` mapped, even though it would make more sense
	vim.api.nvim_set_keymap("n", "gl", ":lua require('peek').Peek('definition')<CR>", opts)
end
