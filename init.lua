vim.cmd([[set nocp]])
--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors=true
vim.cmd([[
colorscheme everforest
]])
vim.g.instant_markdown_autostart=0
vim.env.QT_QPA_PLATFORM=''
vim.g.mkdp_browser='qutebrowser'
vim.g.suda_smart_edit = 1

require('plugins')
require('lsp')
--require('dashboard-options')
require('telescope-options')
require("nvim-tree").setup({
	disable_netrw = false,
	hijack_netrw = true,
})
require('lualine').setup()

require'colorizer'.setup({
	'css';
})
require('keybindings')
require('neovim-gtk-options')

vim.cmd([[highlight Beacon guibg=#2b3339 ctermbg=15]])

if vim.g.neovide then
	vim.opt.guifont = 'SauceCodePro Nerd Font:h7'
	vim.keymap.set('n','<C-n>',':NvimTreeToggle<CR>', {noremap = true})
end

