local M = {
    'neovim/nvim-lspconfig',
    dependencies = {
        'mason-org/mason.nvim',
        'mason-org/mason-lspconfig.nvim',
    },
}

function M.config()
    -- 1. Setup Mason to install the servers
    require("mason").setup()
    require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "rust_analyzer", "clangd" },
    })

    -- 2. Configure Diagnostic Icons (Replaces lsp-zero's sign_icons)
    vim.diagnostic.config({
        signs = {
            text = {
                [vim.diagnostic.severity.ERROR] = 'E',
                [vim.diagnostic.severity.WARN] = 'W',
                [vim.diagnostic.severity.INFO] = 'I',
                [vim.diagnostic.severity.HINT] = 'H',
            },
        },
    })

    -- 3. Native Neovim 0.11+ Server Configuration
    vim.lsp.config("rust_analyzer", {})
    vim.lsp.enable("rust_analyzer")

    vim.lsp.config("clangd", {})
    vim.lsp.enable("clangd")

    vim.lsp.config("lua_ls", {
        settings = {
            Lua = {
                diagnostics = {
                    globals = { 'vim' },
                },
                workspace = {
                    library = vim.api.nvim_get_runtime_file("", true),
                },
                telemetry = {
                    enable = false,
                },
            }
        }
    })
    vim.lsp.enable("lua_ls")
end

return M
