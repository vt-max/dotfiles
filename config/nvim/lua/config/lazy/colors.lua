return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,

        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                no_italic = true,
                integrations = {
                    cmp = false,
                    blink_cmp = true,
                    treesitter = true,
                    diffview = true,
                    snacks = {
                        enabled = true,
                        indent_scope_color = "",
                    }
                }
            })

            vim.cmd("colorscheme catppuccin")
        end
    }
    -- {
    --     'sainnhe/gruvbox-material',
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         -- Optionally configure and load the colorscheme
    --         -- directly inside the plugin declaration.
    --         vim.g.gruvbox_material_foreground = 'original'
    --         vim.g.gruvbox_material_background = 'hard'
    --         vim.g.gruvbox_material_enable_italic = false
    --         vim.cmd.colorscheme('gruvbox-material')
    --     end
    -- }

    -- {
    --     'echasnovski/mini.base16',
    --     version = false,
    --
    --     config = function()
    --         require("mini.base16").setup({
    --             palette = nil,
    --         })
    --     end
    -- }
}
