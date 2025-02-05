require("config")
require("gorsh")


vim.opt.shiftwidth = 4
-- vim.opt.clipboard = "unnamedplus"

-- Will these commands become default in a build of NeoVim that isn't released yet?
-- On a youtube video where TJ was using these, someone mentioned to install the nightly build.
vim.keymap.set('n', 'grn', vim.lsp.buf.rename)
vim.keymap.set('n', 'gra', vim.lsp.buf.code_action)
vim.keymap.set('n', 'grr', vim.lsp.buf.references)

vim.g.have_nerd_font = true

if true then
	local x2 = false
	print(x2)
end

local x_fido = 5
print(x_fido)

-- vim.api.nvim_create_autocmd('sdflkj', 0)

-- vim.keymap.set('n', '<space><space>x', '<cmd>source %<CR>')
-- vim.keymap.set('n', '<space>x', ':.lua<CR>')
-- vim.keymap.set('v', '<space>x', ':lua<CR>')

print("hello")

-- let g:loaded_node_provider = 0


-- https://github.com/zazencodes/zazencodes-season-1/blob/main/src/neovim-lazy-ide-2024/.config/nvim/lua/options.lua
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = "*.py",
  callback = function()
    vim.opt.tabstop = 2
    vim.opt.softtabstop = 2
    vim.opt.shiftwidth = 2
    -- vim.opt.textwidth = 79
    -- vim.opt.colorcolumn = "79"
  end
})

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = {"*.lua"},
  callback = function()
    vim.opt.tabstop = 2
    vim.opt.softtabstop = 2
    vim.opt.shiftwidth = 2
  end
})



-- vim.cmd("set shiftwidth=2")
-- vim.g.background = "light"
-- vim.opt.swapfile = false

-- Navigate vim panes better
-- vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
-- vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
-- vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
-- vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
-- vim.wo.number = true
