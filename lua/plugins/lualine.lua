-- For a longer lualine config, see:
-- https://github.com/josean-dev/dev-environment-files/blob/main/.config/nvim/lua/josean/plugins/lualine.lua

return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    config = function()
        require("lualine").setup({
            options = {
                -- icons_enabled = false,
                theme = 'onedark',
                -- component_separators = '|',
                -- section_separators = '',
            },
            tabline = {
                lualine_a = { 'buffers' },
                lualine_z = { 'tabs' }
            }
        })
    end,
}
