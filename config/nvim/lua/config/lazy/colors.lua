return {
    -- {
    --     -- "savq/melange-nvim",
    --     -- lazy = false,
    --     -- priority = 1000,
    --
    --     "folke/tokyonight.nvim",
    --     lazy = false,
    --     priority = 1000,
    --     opts = {},
    --
    --     config = function()
    --         vim.cmd("set termguicolors")
    --         vim.cmd("colorscheme tokyonight-night")
    --     end
    -- }

    {
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        priority = 1000,
        opts = {},


        config = function()
            require("gruvbox").setup({
                contrast = "hard",
                transparent_mode = true,
            })

            vim.cmd("set termguicolors")
            vim.cmd("colorscheme gruvbox")
        end
    }
}
