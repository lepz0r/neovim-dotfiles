vim.keymap.set('n','<leader>fb',function () require 'telescope'.extensions.file_browser.file_browser() end, { noremap = true })
vim.keymap.set('n','<leader>fh',function () require("telescope.builtin").oldfiles() end, { noremap = true })
