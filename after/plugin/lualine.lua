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
