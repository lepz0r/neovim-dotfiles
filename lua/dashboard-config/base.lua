local home = os.getenv('HOME')
local db = require('dashboard')

--Disable Indent on dashboard
vim.cmd([[
	autocmd filetype dashboard IndentLinesDisable
]])

db.hide_statusline=false
db.hide_tabline=false
db.session_directory=home ..'/.local/share/nvim/sessions'
db.custom_center = {
	{icon = '  ',
	desc = 'New File                              ',
	action = 'new',
	shortcut = '<leader> f n'},
	{icon = '  ',
	desc = 'Open File                             ',
	action =  'Telescope file_browser',
	shortcut = '<leader> f b'},
	{icon = '  ',
	desc = 'Recent Files                          ',
	action = 'Telescope oldfiles',
	shortcut = '<leader> f h'
	},
	{icon = '  ',
	desc = 'Find  word                            ',
	action = 'Telescope live_grep',
	shortcut = '<leader> f w'},
}
db.custom_footer= {'The leader key is set to ;'}
