if vim.env.TERM ~= "linux" then
	vim.opt.termguicolors=true
	vim.cmd([[
	colorscheme everforest
	]])
	vim.cmd([[highlight Beacon guibg=#2b3339 ctermbg=15]])
end
