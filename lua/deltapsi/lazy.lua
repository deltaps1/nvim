local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

return require('lazy').setup(
    {
        -- 'wbthomason/packer.nvim',
        'feline-nvim/feline.nvim',
        {
            'nvim-telescope/telescope.nvim', tag = '0.1.6',
            dependencies = { {'nvim-lua/plenary.nvim'} }
        },
        { 'rose-pine/neovim', name = 'rose-pine' },
        {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
        'theprimeagen/harpoon',
        'mbbill/undotree',
        'tpope/vim-fugitive',
        'lewis6991/gitsigns.nvim',
        {
            'VonHeikemen/fine-cmdline.nvim',
            dependencies = { {'MunifTanjim/nui.nvim'} }
        },
        {'neovim/nvim-lspconfig'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/nvim-cmp'},
        {
            'VonHeikemen/lsp-zero.nvim',
            dependencies = {
                {'neovim/nvim-lspconfig'},
                {'williamboman/mason.nvim'},
                {'williamboman/mason-lspconfig.nvim'},
                {'hrsh7th/nvim-cmp'},
                {'hrsh7th/cmp-nvim-lsp'},
                {'L3MON4D3/LuaSnip'}
            }
        },
    }
)

