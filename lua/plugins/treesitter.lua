return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    enable = true,
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = {
              "bash",
              "c",
              "eex",
              "elixir",
              "heex",
              "html",
              "javascript",
              "lua",
              "python",
              "typescript",
              "vim",
              "vimdoc",
            },
          sync_install = false,
          highlight = {
            enable = true,

            -- Taken from https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/lazy/treesitter.lua
            -- I haven't experienced this yet, but I'll trust him on this one
            disable = function(lang, buf)
              if lang == "html" then
                  print("disabled")
                  return true
              end

              local max_filesize = 100 * 1024 -- 100 KB
              local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
              if ok and stats and stats.size > max_filesize then
                  vim.notify(
                      "File larger than 100KB treesitter disabled for performance",
                      vim.log.levels.WARN,
                      {title = "Treesitter"}
                  )
                  return true
              end
            end,
          },
          indent = { enable = true },
        })
    end
 }
