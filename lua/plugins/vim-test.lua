return {
  -- "vim-test/vim-test",
  -- dependencies = {
    -- "preservim/vimux"
  -- },
  -- config = function()
    -- vim.keymap.set("n", "<leader>t", ":TestNearest<CR>", {})
    -- vim.keymap.set("n", "<leader>T", ":TestFile<CR>", {})
    -- vim.keymap.set("n", "<leader>a", ":TestSuite<CR>", {})
    -- vim.keymap.set("n", "<leader>l", ":TestLast<CR>", {})
    -- vim.keymap.set("n", "<leader>g", ":TestVisit<CR>", {})
    -- vim.cmd("let test#strategy = 'vimux'")
  -- end,
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-neotest/neotest-python",
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-python")({
            is_test_file = function(file_path)
              return vim.endswith(file_path, ".py")
            end
          })
        }
      })
    end
  }
}

