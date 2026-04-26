local M = {
    'numToStr/Comment.nvim',
    lazy = false,
}

function M.config()
    require("Comment").setup({
        opleader = {
            -- C-/ is mapped as C-_
            line = '<C-_>',
        }
    })

end


return M
