require("config.lazy")
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
