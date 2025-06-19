local M = {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    -- See `:help lualine.txt`
}

function M.config() 
    require("lualine").setup {
        options = {
            icons_enabled = false,
            theme = 'catppuccin',
            component_separators = '|',
            section_separators = '',
        },
    }

end

return M
