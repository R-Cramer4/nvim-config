local M = {
    "nvim-telescope/telescope.nvim",
    dependencies = { 'nvim-lua/plenary.nvim'},
    lazy = true,
    cmd = "Telescope",
    keys = {
        -- LSP Keymaps (including gd for definition)
        { "gd", "<cmd>Telescope lsp_definitions<cr>", desc = "LSP Go to Definition" },
        { "gr", "<cmd>Telescope lsp_references<cr>", desc = "LSP Find References" },
        { "gi", "<cmd>Telescope lsp_implementations<cr>", desc = "LSP Go to Implementation" },

        -- General Search Keymaps (Highly recommended so you can actually open Telescope)
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find Buffers" },
        { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },
    },
}

function M.config()
    local actions = require "telescope.actions"

    require("telescope").setup {
        defaults = {
            mappings = {
                i = {
                  ["<C-n>"] = actions.cycle_history_next,
                  ["<C-p>"] = actions.cycle_history_prev,
                  ["<C-j>"] = actions.move_selection_next,
                  ["<C-k>"] = actions.move_selection_previous,
                  ["<C-q>"] = actions.close,
                },
                n = {
                  ["<esc>"] = actions.close,
                  ["j"] = actions.move_selection_next,
                  ["k"] = actions.move_selection_previous,
                  ["q"] = actions.close,
                },
            },
        }
    }
end


return M
