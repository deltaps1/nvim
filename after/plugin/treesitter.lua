local ok, ts = pcall(require, 'nvim-treesitter')
if not ok then return end

-- Asynkront og no-op hvis parserne allerede er installeret
ts.install({
    "python", "c", "lua", "vim", "vimdoc", "query",
    "javascript", "typescript", "tsx",
    "html", "css",
    "json", "yaml", "toml",
    "markdown", "markdown_inline",
    "bash", "fish",
    "diff", "gitcommit",
})

-- Highlighting og indent for alle filtyper, der har en parser
vim.api.nvim_create_autocmd('FileType', {
    group = vim.api.nvim_create_augroup('deltapsi_treesitter', { clear = true }),
    callback = function(args)
        if not pcall(vim.treesitter.start, args.buf) then return end
        vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
})
