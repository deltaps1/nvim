require("deltapsi.remap")
require("deltapsi.lazy")

vim.opt.nu = true
vim.opt.relativenumber = true

-- Sæt standard indrykning til 4 mellemrum
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.expandtab = true

-- Funktion til at sætte indrykning for specifikke filtyper
local function set_indent(width)
    vim.o.shiftwidth = width
    vim.o.tabstop = width
end

-- Brug autocmd til at sætte indrykning til 2 mellemrum for JSX-filer
vim.api.nvim_create_autocmd("FileType", {
    pattern = {"javascriptreact", "typescriptreact"},
    callback = function()
        set_indent(2)
    end,
})

-- NetRw hack fundet på Reddit
-- (https://www.reddit.com/r/neovim/comments/16r1rno/how_can_i_show_line_number_and_relative_line/) 
vim.g.netrw_bufsettings = 'noma nomod nu rnu nobl nowrap ro'

