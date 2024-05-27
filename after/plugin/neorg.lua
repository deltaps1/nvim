require("neorg").setup({
    load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {
            config = { -- We added a `config` table!
                icon_preset = "diamond", -- And we set our option here.
                folds = true,
            },
        },
    }
})
