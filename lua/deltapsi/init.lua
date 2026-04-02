vim.opt.rtp:append(vim.fn.stdpath("data") .. "/site")

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("deltapsi.remap")
require("deltapsi.lazy")

vim.opt.nu = true
vim.opt.relativenumber = true

-- Sæt standard indrykning til 4 mellemrum
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.autoindent = true
vim.o.smartindent = true

-- Brug 2 mellemrum for web-filtyper (buffer-lokalt så det ikke påvirker andre buffere)
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "javascript", "typescript", "javascriptreact", "typescriptreact", "html", "css", "json", "yaml" },
    callback = function()
        vim.bo.shiftwidth = 2
        vim.bo.tabstop = 2
        vim.bo.softtabstop = 2
    end,
})

-- NetRw hack fundet på Reddit
-- (https://www.reddit.com/r/neovim/comments/16r1rno/how_can_i_show_line_number_and_relative_line/)
vim.g.netrw_bufsettings = 'noma nomod nu rnu nobl nowrap ro'

-- Primeagen inspirerede editor setting
-- vim.opt.guicursor = "" -- fat insert cursor (kan være svær at at bruge)
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true

vim.opt.scrolloff = 8 -- Der er altid 8 linjer under cursoren (pånær i slutningen)

vim.wo.foldlevel = 99
vim.wo.conceallevel = 2
