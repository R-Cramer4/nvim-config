local M = {
    'lewis6991/gitsigns.nvim',
}

function M.config()
    require('gitsigns').setup {
        on_attach = function(bufnr)
            local gitsigns = require('gitsigns')

            local function map(mode, l, r, opts)
                opts = opts or {}
                opts.buffer = bufnr
                vim.keymap.set(mode, l, r, opts)
            end

            -- Navigation
            map('n', '<leader>n', function()
                if vim.wo.diff then
                    vim.cmd.normal({']c', bang = true})
                else
                    gitsigns.nav_hunk('next')
                end
            end)

            map('n', '<leader>N', function()
                if vim.wo.diff then
                    vim.cmd.normal({'[c', bang = true})
                else
                    gitsigns.nav_hunk('prev')
                end
            end)


            -- Actions
            map('n', '<leader>hs', function() gitsigns.stage_hunk() end, { desc = 'Stage hunk' })
            map('n', '<leader>hu', function() gitsigns.undo_stage_hunk() end, { desc = 'Undo stage hunk' })
            map('n', '<leader>hr', function() gitsigns.reset_hunk() end, { desc = 'Reset hunk' })
            map('v', '<leader>hs', function() gitsigns.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end, { desc = 'Stage hunk' })
            map('v', '<leader>hr', function() gitsigns.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end, { desc = 'Reset hunk' })
            map('n', '<leader>hS', function() gitsigns.stage_buffer() end, { desc = 'Stage buffer' })
            map('n', '<leader>hu', function() gitsigns.reset_buffer_index() end, { desc = 'Reset buffer index' })
            map('n', '<leader>hR', function() gitsigns.reset_buffer() end, { desc = 'Reset buffer' })
            map('n', '<leader>hp', function() gitsigns.preview_hunk() end, { desc = 'Preview hunk' })
            map('n', '<leader>hb', function() gitsigns.blame_line() end, { desc = 'Blame line' })
            map('n', '<leader>hd', function() gitsigns.diffthis() end, { desc = 'Diff this' })
        end
    }
end

return M
