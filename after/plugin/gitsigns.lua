require('gitsigns').setup({
    on_attach = function(bufnr)
        local gs = package.loaded.gitsigns
        local function o(desc) return { buffer = bufnr, desc = desc } end
        vim.keymap.set('n', ']c', gs.next_hunk, o("Næste git-hunk"))
        vim.keymap.set('n', '[c', gs.prev_hunk, o("Forrige git-hunk"))
        vim.keymap.set('n', '<leader>hp', gs.preview_hunk, o("Forhåndsvis hunk"))
        vim.keymap.set('n', '<leader>hb', gs.blame_line, o("Vis git blame"))
        vim.keymap.set('n', '<leader>hr', gs.reset_hunk, o("Nulstil hunk"))
    end,
})
