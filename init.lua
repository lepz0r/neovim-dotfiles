vim.cmd([[set nocp]])
--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1
vim.g.instant_markdown_autostart=0
vim.env.QT_QPA_PLATFORM=''
vim.g.mkdp_browser='qutebrowser'
vim.g.suda_smart_edit = 1

require('keybindings')
require('plugins')
--require('everforest.base')
require('dracula.base')
require('lsp')
require('dashboard-config.base')
require('telescope-config.base')
--require('neovim-session-manager-config.base')
require('nvim-tree-config.base')
require("neovide-config.base")
require('lualine').setup()

require'colorizer'.setup({
	'css';
})
require('neovim-gtk-options')

