local builtin = require('telescope.builtin')

-- Primeagain does <leader>pf for this one, so remember this and don't get confused on
-- which one he is using
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-k>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- Project Search
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep -> ")})
end)

vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = "Telescope old files?" })

require('telescope').setup({
  extensions = {
    ['ui-select'] = {
      require('telescope.themes').get_dropdown {
      }
    }
  }
})

require('telescope').load_extension('ui-select')
