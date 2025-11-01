return {
  -- typing fu here only shows one suggestion "fu~", but
  -- https://www.youtube.com/watch?v=iXIwm4mCpuc at 13:34 has 2
  -- both "fu~" and "function ()~" as snippets.
  -- He says the second one is the "lsp snippet" from cmp_nvim_lsp
  -- UPDATE -- I do get the second one, but there is a delay upon
  -- first loading the buffer.
  {
    'hrsh7th/cmp-nvim-lsp', -- do I need this now?
  },
  {
    'hrsh7th/nvim-cmp',
    config = function()
      -- Set up nvim-cmp.
      local cmp = require 'cmp'
      -- require('luasnip.loaders.from_vscode').lazy_load()

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
  }
}
