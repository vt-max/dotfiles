return {
    {
        "savq/melange-nvim",
        lazy = false,
        priority = 1000,

        config = function()
            vim.cmd("set termguicolors")
            vim.cmd("colorscheme melange")
        end
    }
}
