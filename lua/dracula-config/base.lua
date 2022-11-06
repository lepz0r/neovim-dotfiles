if vim.env.TERM ~= "linux" then
	vim.opt.termguicolors=true
	vim.cmd([[
	colorscheme dracula
	]])
end
