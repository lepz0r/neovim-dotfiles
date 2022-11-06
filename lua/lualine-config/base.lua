if vim.env.TERM == "linux" then
	require('lualine').setup{
	options = {
		icons_enabled=false,
		component_separators = '|',
		section_separators = { left = '', right = '' },
		theme = "16color",
	},
}
else
require('lualine').setup{
	options = {
		icons_enabled=true,
		component_separators = '|',
		section_separators = { left = '', right = '' },
	},
	sections = {
		lualine_a = {
			{ 'mode', separator = { left = '' }, right_padding = 2 },
			},
			lualine_z = {
			  { 'location', separator = { right = '' }, left_padding = 2 },
			},
		},
}
end
