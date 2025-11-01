return {
  -- typing fu here only shows one suggestion "fu~", but
  -- https://www.youtube.com/watch?v=iXIwm4mCpuc at 13:34 has 2
  -- both "fu~" and "function ()~" as snippets.
  -- He says the second one is the "lsp snippet" from cmp_nvim_lsp
  -- UPDATE -- I do get the second one, but there is a delay upon
  -- first loading the buffer.
  {
    'hrsh7th/nvim-cmp',
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-buffer", -- source for text in buffer
      "hrsh7th/cmp-path", -- source for file system paths
      {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
        build = "make install_jsregexp",
      },
      "saadparwaiz1/cmp_luasnip", -- for autocompletion
      "rafamadriz/friendly-snippets", -- useful snippets
      "onsails/lspkind.nvim", -- vs-code like pictograms
    },

    config = function()
      local cmp = require('cmp')
      local luasnip = require('luasnip')
      local lspkind = require('lspkind')

      require('luasnip.loaders.from_vscode').lazy_load()

      cmp.setup({
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.


          ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
          ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
          ['<C-y>'] = cmp.mapping.confirm({ select = true }),
          ["<C-Space>"] = cmp.mapping.complete(),

          -- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
          -- vim.keymap.set('n', '<C-h>', vim.lsp.buf.hover, opts)
          -- vim.keymap.set('n', '<leader>vws', vim.lsp.buf.workspace_symbol, opts)
          -- vim.keymap.set('n', '<leader>vd', vim.diagnostic.open_float, opts)
          -- vim.keymap.set('n', '[d', vim.diagnostic.goto_next, opts)
          -- vim.keymap.set('n', ']d', vim.diagnostic.goto_prev, opts)
          -- vim.keymap.set('n', '<leader>vca', vim.lsp.buf.code_action, opts)
          -- vim.keymap.set('n', '<leader>vrr', vim.lsp.buf.references, opts)
          -- vim.keymap.set('n', '<leader>vrn', vim.lsp.buf.rename, opts)
          -- vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, opts)
          -- vim.keymap.set('i', '<C-h>', vim.lsp.buf.signature_help, opts)

        }),

        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          -- { name = 'vsnip' }, -- For vsnip users.
          -- { name = 'luasnip' }, -- For luasnip users.
          -- { name = 'ultisnips' }, -- For ultisnips users.
          -- { name = 'snippy' }, -- For snippy users.
          { name = 'buffer' },
          { name = 'path' },
        })
      })
    end
  },
}
