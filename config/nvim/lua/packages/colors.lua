-- Colorscheme.
MiniDeps.later(function()
    MiniDeps.add({
        source = "folke/tokyonight.nvim",
    })

    require("tokyonight").setup({
        styles = {
            comments = { italic = false },
            keywords = { italic = false },
        },
    })

    -- vim.opt.background = "light"
    vim.opt.background = "dark"
    vim.cmd("colorscheme tokyonight-storm")
end)
