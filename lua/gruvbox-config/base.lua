if vim.env.TERM ~= "linux" then
	vim.opt.termguicolors=true
	vim.o.background = "dark"
	vim.cmd([[
	colorscheme gruvbox
	]])
end
