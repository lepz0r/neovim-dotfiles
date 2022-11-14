vim.cmd([[set nocp]])
--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1
vim.opt.mouse='a'
vim.opt.clipboard='unnamedplus'
vim.wo.number = true

require('core.keybindings')
require('core.plugins')

require('markdown-preview-config.base')
require('suda-config.base')
require('dracula-config.base')
require('lsp')
require('dashboard-config.base')
require('telescope-config.base')
require('nvim-tree-config.base')
require("neovide-config.base")
require('lualine-config.base')
require('core.gui')

