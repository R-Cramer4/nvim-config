local M = {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
}

function M.config()

    require("ibl").setup()

end

return M
