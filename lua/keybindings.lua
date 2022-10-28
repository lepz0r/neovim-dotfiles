
vim.keymap.set('n','<F8>',':TagbarToggle<CR>')


if vim.g.GtkGuiLoaded == nil then
	vim.keymap.set('n','<C-n>',':NvimTreeToggle<CR>', {noremap = true})
end

if vim.g.GtkGuiLoaded then
	vim.keymap.set('n','<C-n>',':NGToggleSidebar<CR>', {noremap = true})
end
