local ok, configs = pcall(require, 'nvim-treesitter.configs')
if not ok then return end

configs.setup({
    ensure_installed = {
        "python", "c", "lua", "vim", "vimdoc", "query",
        "javascript", "typescript", "tsx",
        "html", "css",
        "json", "yaml", "toml",
        "markdown", "markdown_inline",
        "bash", "fish",
        "diff", "gitcommit",
    },

    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = { enable = true },
})

