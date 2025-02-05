return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    enable = true,
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "elixir", "eex", "heex", "typescript", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "python" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
        })
    end
 }
