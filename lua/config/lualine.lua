require("lualine").setup({
    options = {
        theme = 'onedark',
    },
    tabline = {
        lualine_a = { 'buffers' },
        lualine_z = { 'tabs' }
    }
})
