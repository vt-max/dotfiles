return {
    {
        -- "savq/melange-nvim",
        -- lazy = false,
        -- priority = 1000,

        -- "folke/tokyonight.nvim", lazy = false,
        -- priority = 1000,
        -- opts = {},
        --
        -- config = function()
        --     vim.cmd("set termguicolors")
        --     vim.cmd("colorscheme tokyonight-night")
        -- end

        "catppuccin/nvim",
        priority = 1000,

        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                no_italic = true,
            })
            vim.cmd("colorscheme catppuccin")
        end
    }

    -- {
    --     "ellisonleao/gruvbox.nvim",
    --     lazy = false,
    --     priority = 1000,
    --     opts = {},
    --
    --
    --     config = function()
    --         require("gruvbox").setup({
    --             contrast = "hard",
    --             italic = {
    --                 strings = false,
    --                 emphasis = false,
    --                 comments = false,
    --                 operators = false,
    --                 folds = false,
    --             },
    --             transparent_mode = true,
    --         })
    --
    --         vim.cmd("set termguicolors")
    --         vim.cmd("colorscheme gruvbox")
    --     end
    -- }
}
