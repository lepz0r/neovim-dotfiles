
vim.keymap.set('n','<F8>',':TagbarToggle<CR>')
vim.keymap.set('n','<Space>','<Nop>')
vim.g.mapleader = ";"
vim.g.maplocaleader = ";"
vim.keymap.set('n','<leader>f',':Telescope file_browser<CR>', { noremap = true })


if vim.g.GtkGuiLoaded == nil then
	vim.keymap.set('n','<C-n>',':NvimTreeToggle<CR>', {noremap = true})
end

if vim.g.GtkGuiLoaded then
	vim.keymap.set('n','<C-n>',':NGToggleSidebar<CR>', {noremap = true})
end
