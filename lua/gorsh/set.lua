vim.opt.guicursor = ""

-- vim.opt.clipboard = "unnamedplus"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

-- Disable mouse interactions
vim.opt.mouse = ""

vim.opt.swapfile = false
vim.opt.backup = false
-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 4
vim.opt.scrolloff = 999

vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"



-- From https://github.com/josean-dev/dev-environment-files/blob/main/.config/nvim/lua/josean/lsp.lua
local severity = vim.diagnostic.severity

vim.diagnostic.config({
  signs = {
    text = {
      [severity.ERROR] = " ",
      [severity.WARN] = " ",
      [severity.HINT] = "󰠠 ",
      [severity.INFO] = " ",
    },
  },
})









-- Will these commands become default in a build of NeoVim that isn't released yet?
-- On a youtube video where TJ was using these, someone mentioned to install the nightly build.
vim.keymap.set('n', 'grn', vim.lsp.buf.rename)
vim.keymap.set('n', 'gra', vim.lsp.buf.code_action)
vim.keymap.set('n', 'grr', vim.lsp.buf.references)

vim.g.have_nerd_font = true

-- vim.api.nvim_create_autocmd('sdflkj', 0)

-- vim.keymap.set('n', '<space><space>x', '<cmd>source %<CR>')
-- vim.keymap.set('n', '<space>x', ':.lua<CR>')
-- vim.keymap.set('v', '<space>x', ':lua<CR>')

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
