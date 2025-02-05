-- "n" below means normal mode.
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- From https://www.youtube.com/watch?v=o7PnaiwPHiY
vim.keymap.set('n', '<C-l>', '<cmd>bn<CR>', { silent = true, desc = 'Next buffer' })
vim.keymap.set('n', '<C-h>', '<cmd>bp<CR>', { silent = true, desc = 'Previous buffer' })


vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})


-- From https://www.youtube.com/watch?v=VljhZ0e9zGE
-- vim.keymap.set('n', '<leader>n', ':bn<CR>')
-- vim.keymap.set('n', '<leader>p', ':bp<CR>')
-- vim.keymap.set('n', '<leader>x', ':bd<CR>')
-- vim.keymap.set({'n', 'v'}, "<leader>/", ':CommentToggle<CR>')
-- # I think this can also be '"+y'
-- # But I'm sure [[ ]] reads better :)
-- vim.keymap.set({'n', 'v'}, '<leader>y', [["+y]]) # I think this can also be '"+y'


-- Neotest Mappings
vim.keymap.set('n', '<leader>Tt', function()
  require("neotest").run.run()
end, { desc = "Run test" })
-- vim.keymap.set('n', '<leader>Td', function()
--   require("neotest").run.run( { strategy = "dap" } )
-- end, { desc = "Debug test" })
vim.keymap.set('n', '<leader>Tf', function()
  require("neotest").run.run(vim.fn.expand "%")
end, { desc = "Run all tests in the file" })

vim.keymap.set('n', '<leader>Tp', function()
  require("neotest").run.run(vim.fn.getcwd())
end, { desc = "Run all tests in the project" })


vim.keymap.set('n', '<leader><CR>', function()
  require("neotest").summary.toggle()
end, { desc = "Test summary" })

vim.keymap.set('n', '<leader>o', function()
  require("neotest").output.open()
end, { desc = "Test output hover" })

vim.keymap.set('n', '<leader>O', function()
  require("neotest").output_panel.toggle()
end, { desc = "Test output window" })

-- ["]T"] = { function() require("neotest").jump.next() end, desc = "Next test" },
-- ["[T"] = { function() require("neotest").jump.prev() end, desc = "previous test" },
