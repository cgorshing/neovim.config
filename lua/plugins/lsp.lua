return {
	{
		"neovim/nvim-lspconfig",
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
			require('lspconfig').lua_ls.setup({
			})

            require('lspconfig').elixirls.setup({
                cmd = { "/Users/cgorshing/.local/elixir-ls/language_server.sh" };
            })
		end,
	}
}
