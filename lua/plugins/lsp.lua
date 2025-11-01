return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
          "eslint",
          "lua_ls",
          "ts_ls",
          "html",
          "pyright",
          "elixirls",
          "tailwindcss",
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


    -- I tried the expert-lsp (on mac) but had problems with just running it (had to accept it under
    -- Security & Privacy). After that I kept getting AccessDenied until I removed the .burrito directory
    -- in ~/Library/Application\ Support/.burrito
    -- Still won't work. Not sure if it is trying to run elixir/mix and the way
    -- I have asdf setup is not working
    
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      -- require('lspconfig').pyright.setup({
        -- capabilities = capabilities,
        --  capabilities = capabilities,
        --before_init = function(_, config)
        -- local util = require("lspconfig/util")
        -- local path = util.path
        -- From https://www.youtube.com/watch?v=VljhZ0e9zGE
        -- default_venv_path = path.join(vim.env.HOME, "virtualenvs", "nvim-venv", "bin", "python")
        -- config.settings.python.pythonPath = default_venv_path
        --end,
      -- })

      -- require('lspconfig').ts_ls.setup({
        -- capabilities = capabilities,
      -- })

      -- require('lspconfig').html.setup({
        -- capabilities = capabilities,
      -- })

      -- require('lspconfig').lua_ls.setup({
        -- capabilities = capabilities,
      -- })

      -- require('lspconfig').elixirls.setup({
        -- capabilities = capabilities,
        -- cmd = { "C:\\Users\\cgorshing\\Downloads\\elixir-ls-v0.26.2\\language_server.bat" };
        -- cmd = { "/home/cgorshing/tools/elixir-ls-built/language_server.sh" },
      -- })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      -- vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      -- vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      -- vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  }
}