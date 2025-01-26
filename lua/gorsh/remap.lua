-- "n" below means normal mode.
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- From https://www.youtube.com/watch?v=o7PnaiwPHiY
vim.keymap.set('n', '<C-l>', '<cmd>bn<CR>', { silent = true, desc = 'Next buffer' })
vim.keymap.set('n', '<C-h>', '<cmd>bp<CR>', { silent = true, desc = 'Previous buffer' })
