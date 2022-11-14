if vim.g.GtkGuiLoaded == nil then
	vim.opt.background=light
else
	vim.cmd([[set background=light]])
end

if vim.g.GtkGuiLoaded == nil and vim.g.neovide == nil then
	vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
	--vim.cmd([[hi NonText guibg=NONE ctermbg=NONE]])
	vim.cmd([[hi EndOfBuffer guibg=NONE ctermbg=NONE]])
else
	vim.g.beacon_enable=0
end
