MiniDeps.later(function()
    MiniDeps.add({
        source = "Saghen/blink.cmp",
        checkout = "v1.0.0",
    })

    require("blink.cmp").setup({
        signature = {
            enabled = true,
        },
    })
end)
