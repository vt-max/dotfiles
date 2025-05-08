-- LSP
MiniDeps.now(function()
    MiniDeps.add({
        source = 'neovim/nvim-lspconfig',
        depends = {
            'mason-org/mason.nvim',
            'mason-org/mason-lspconfig.nvim',
        }
    })

    require("mason").setup()

    require("mason-lspconfig").setup({
        automatic_enable = true,
    })

    local lspconfig = require("lspconfig")

    lspconfig.rust_analyzer.setup({
        settings = {
            ["rust-analyzer"] = {
                cargo = {
                    allFeatures = true,
                },
                completion = {
                    postfix = {
                        enable = false,
                    },
                },
            },
        },
    })

    lspconfig.lua_ls.setup({
        settings = {
            Lua = {
                runtime = {
                    verison = 'LuaJIT',
                },
                diagnostics = {
                    globals = {
                        "require",
                        "vim",
                    },
                },
                telementary = {
                    enable = false,
                },
                workspace = {
                    library = vim.api.nvim_get_runtime_file("", true),
                },
            },
        }
    })

    vim.diagnostic.enable()
    vim.diagnostic.config({ virtual_text = true })
end)
