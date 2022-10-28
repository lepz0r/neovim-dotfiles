vim.cmd([[set nocp]])
--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1

require('plugins')
require('lsp')
require("nvim-tree").setup({
	disable_netrw = false,
	hijack_netrw = true,
})
require('lualine').setup()

vim.opt.termguicolors=true
require'colorizer'.setup({
	'css';
})

vim.cmd([[colorscheme everforest]])
vim.g.instant_markdown_autostart=0
vim.env.QT_QPA_PLATFORM=''
vim.g.mkdp_browser='qutebrowser'
--vim.g["suda#nopass"]=1
vim.g.suda_smart_edit = 1

if vim.g.GtkGuiLoaded == nil and vim.g.neovide == nil then
	vim.keymap.set('n','<C-n>',':NvimTreeToggle<CR>', {noremap = true})
	vim.opt.background=light
	vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
	--vim.cmd([[hi NonText guibg=NONE ctermbg=NONE]])
	vim.cmd([[hi EndOfBuffer guibg=NONE ctermbg=NONE]])
end
if vim.g.GtkGuiLoaded then
	vim.keymap.set('n','<C-n>',':NGToggleSidebar<CR>', {noremap = true})
	vim.cmd([[set background=light]])
end

if vim.g.neovide then
	vim.opt.background=light
	vim.opt.guifont = 'SauceCodePro Nerd Font:h7'
	vim.keymap.set('n','<C-n>',':NvimTreeToggle<CR>', {noremap = true})
end

vim.keymap.set('n','<F8>',':TagbarToggle<CR>')
