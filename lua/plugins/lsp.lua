return {
  -- TODO I don't know if I really need these two mason plugins
  -- Maybe .... looks like I could use it to install different LSP's
  -- like lua_ls and tsserver
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require('mason').setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    }
  },
  {
    "neovim/nvim-lspconfig",
    enabled = true,
    lazy = false,
    dependencies = {
      -- The following helps with "vim" being undefined in lua files
      "folke/lazydev.nvim",
      ft = "lua", -- only load on lua files
      opts = {
        library = {
          -- See the configuration section for more details
          -- Load luvit types when the `vim.uv` word is found
          { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        },
      },
    },

    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      require('lspconfig').pyright.setup({
        capabilities = capabilities,
        --  capabilities = capabilities,
        --before_init = function(_, config)
        -- local util = require("lspconfig/util")
        -- local path = util.path
        -- From https://www.youtube.com/watch?v=VljhZ0e9zGE
        -- default_venv_path = path.join(vim.env.HOME, "virtualenvs", "nvim-venv", "bin", "python")
        -- config.settings.python.pythonPath = default_venv_path
        --end,
      })

      require('lspconfig').ts_ls.setup({
        capabilities = capabilities,
      })

      require('lspconfig').html.setup({
        capabilities = capabilities,
      })

      require('lspconfig').lua_ls.setup({
        capabilities = capabilities,
      })

      require('lspconfig').elixirls.setup({
        capabilities = capabilities,
        -- cmd = { "C:\\Users\\cgorshing\\Downloads\\elixir-ls-v0.26.2\\language_server.bat" };
        cmd = { "/home/cgorshing/elixir-ls-built/language_server.sh" },
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      -- vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      -- vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      -- vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  }
}
