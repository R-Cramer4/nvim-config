local M = {
    'romgrk/barbar.nvim',
    dependencies = {
        'lewis6991/gitsigns.nvim',
        'nvim-tree/nvim-web-devicons'
    },
}

function M.config()
    init = function() vim.g.barbar_auto_setup = false end
    require('barbar').setup {
        animation = true,
        auto_hide = false,
        tabpages = true,
        clickable = true,

        sidebar_filetypes = {
            NvimTree = true,
        }

    }



end


return M
