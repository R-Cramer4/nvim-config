local M = {
    'williamboman/mason.nvim',
    dependencies = {
        'williamboman/mason-lspconfig.nvim',
        'nvim-lua/plenary.nvim',
    },
}

M.servers = {
    "lua_ls",
    "rust_analyzer",
    "clangd",
}

function M.config()
    local lsp = require("lsp-zero")
    lsp.preset("recommended")

    lsp.set_preferences({
        suggest_lsp_servers = false,
        sign_icons = {
            error = 'E',
            warn = 'W',
            hint = 'H',
            info = 'I',
        }
    })

    require("mason").setup()
    require("lsp-zero").setup()

    require("mason-lspconfig").setup_handlers {
        function (server_name)
            require "lspconfig" [server_name].setup({})
        end
    }

    require("mason-lspconfig").setup {
        ensure_installed = M.servers,
        automatic_installation = true,
    }

    -- settings to allow lua to recognize vim
    require("lspconfig").lua_ls.setup {
        settings = {
            Lua = {
                diagnostics = {
                    globals = {
                        'vim'
                    },
                },
                workspace = {
                    -- Make the server aware of Neovim runtime files
                    library = vim.api.nvim_get_runtime_file("", true),
                },
                -- Do not send telemetry data containing a randomized but unique identifier
                telemetry = {
                    enable = false,
                },

            }
        }
    }
end


return M
