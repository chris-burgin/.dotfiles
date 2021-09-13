return function()
	local hour = os.date("*t").hour
	if (hour > 16) then
		vim.opt.background = 'dark'
	else
		vim.opt.background = 'light'
	end
	vim.cmd("colorscheme PaperColor")
end
