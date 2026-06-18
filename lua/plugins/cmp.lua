local M = {
    'hrsh7th/nvim-cmp',
    dependencies = {
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-nvim-lua',
        'saadparwaiz1/cmp_luasnip',
        'L3MON4D3/LuaSnip',
        'rafamadriz/friendly-snippets',
    },
}

function M.config()
    local cmp = require('cmp')
    local luasnip = require('luasnip')
    
    -- Load VSCode-style snippets from friendly-snippets
    require('luasnip.loaders.from_vscode').lazy_load()

    cmp.setup({
        snippet = {
            expand = function(args)
                luasnip.lsp_expand(args.body)
            end,
        },
        mapping = cmp.mapping.preset.insert({
            ['<C-Space>'] = cmp.mapping.complete(),
            ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item
            ['<Tab>'] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_next_item()
                elseif luasnip.expand_or_jumpable() then
                    luasnip.expand_or_jump()
                else
                    fallback()
                end
            end, { 'i', 's' }),
        }),
        -- CRITICAL: This tells cmp where to get its data
        sources = cmp.config.sources({
            { name = 'nvim_lsp' }, -- Gets data from the native LSP client
            { name = 'luasnip' },
            { name = 'nvim_lua' },
        }, {
            { name = 'buffer' },
            { name = 'path' },
        })
    })
end

return M
