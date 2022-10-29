if vim.g.GtkGuiLoaded == nil then
	--vim.keymap.set('n','<C-n>',':NvimTreeToggle<CR>', {noremap = true})
	vim.keymap.set('n','<C-n>',function () nt_api.tree.toggle() end, {noremap = true})
end

if vim.g.GtkGuiLoaded then
	vim.keymap.set('n','<C-n>',':NGToggleSidebar<CR>', {noremap = true})
end

if vim.g.neovide then
	vim.keymap.set('n','<C-n>',function () nt_api.tree.toggle() end, {noremap = true})
end
