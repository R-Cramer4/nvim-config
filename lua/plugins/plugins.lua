return{
    -- allows the command :Git which does the same thing as git in command line
    'tpope/vim-fugitive',
    -- allows github
    'tpope/vim-rhubarb',

    -- shows pending keybinds
    {'folke/which-key.nvim', opts = {}},

    -- indentation
    {
        'lukas-reineke/indent-blankline.nvim',
        main = "ibl",
        opts = {}
    },

    -- gc to comment visual regions
    {'numToStr/Comment.nvim', opts = {}},

    -- colorscheme
    'navarasu/onedark.nvim',

    -- vim movement practice
    'ThePrimeagen/vim-be-good'
}
