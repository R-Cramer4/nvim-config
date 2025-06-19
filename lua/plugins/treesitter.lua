local M = {
    "nvim-treesitter/nvim-treesitter",
    build = "TSUpdate",
    lazy = false
}

function M.config()
    require "nvim-treesitter.configs".setup {
        ensure_installed = { "c", "cpp", "lua", "rust" },
        sync_installed = true,
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
    }
end


return M
