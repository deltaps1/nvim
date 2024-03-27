require("deltapsi")
vim.wo.relativenumber = true

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
