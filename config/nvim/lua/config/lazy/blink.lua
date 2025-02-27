return {
    'saghen/blink.cmp',
    lazy = false,
    version = 'v0.13.0',

    opts = {
        keymap = {
            preset = 'default',

            ['<C-y>'] = { 'show', 'accept' },
        },

        completion = {
            accept = {
                auto_brackets = {
                    enabled = false
                },
            },

            ghost_text = {
                enabled = false
            },

            menu = {
                scrollbar = false,
            },
        },

        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = 'mono',
        },

        sources = {
            default = { 'lsp', 'path', 'buffer' },
        },

        cmdline = {
            enabled = false,
        },

        signature = {
            enabled = false
        }
    },

    opts_extend = { "sources.default" }
}
