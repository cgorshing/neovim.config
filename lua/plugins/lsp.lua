return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
          "elixirls",
          "eslint",
          "html",
          "lua_ls",
          "pyright",
          "tailwindcss",
          "ts_ls",
        },
    },
    dependencies = {
        {
          "mason-org/mason.nvim",
          opts = {
            ui = {
              icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
              }
            },
          }
        },
        "neovim/nvim-lspconfig",
    },
  },
  {
    "neovim/nvim-lspconfig",
    enabled = true,
    lazy = false,
    dependencies = {
      {
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
      {
        "hrsh7th/cmp-nvim-lsp",
      }
    },


    -- I tried the expert-lsp (on mac) but had problems with just running it (had to accept it under
    -- Security & Privacy). After that I kept getting AccessDenied until I removed the .burrito directory
    -- in ~/Library/Application\ Support/.burrito
    -- Still won't work. Not sure if it is trying to run elixir/mix and the way
    -- I have asdf setup is not working

    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      vim.lsp.config('*', {
        capabilities = capabilities,
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      -- vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      -- vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      -- vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  }
}