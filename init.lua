vim.cmd([[set nocp]])
--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1
vim.opt.mouse='a'
vim.opt.clipboard='unnamedplus'
vim.wo.number = true

require('keybindings')
require('plugins')

require('markdown-preview-config.base')
require('suda-config.base')
--require('everforest.base')
require('dracula-config.base')
require('lsp')
require('dashboard-config.base')
require('telescope-config.base')
--require('neovim-session-manager-config.base')
require('nvim-tree-config.base')
require("neovide-config.base")
require('lualine-config.base')
--require('barbar-config.base')

require'colorizer'.setup({
	'css';
})
require('neovim-gtk-options')

