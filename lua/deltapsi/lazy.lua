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

return require('lazy').setup({
    -- Statusline
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
    },

    -- Fuzzy finder
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },

    -- Colorscheme
    { 'rose-pine/neovim', name = 'rose-pine' },

    -- Syntax highlighting
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

    -- File navigation
    'theprimeagen/harpoon',

    -- Undo history
    'mbbill/undotree',

    -- Git
    'tpope/vim-fugitive',
    'lewis6991/gitsigns.nvim',

    -- LSP
    'neovim/nvim-lspconfig',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',

    -- Completion
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    { 'L3MON4D3/LuaSnip', build = 'make install_jsregexp' },
    'saadparwaiz1/cmp_luasnip',
    'rafamadriz/friendly-snippets',

    -- Formatting
    'stevearc/conform.nvim',

    -- QoL
    { 'windwp/nvim-autopairs', event = 'InsertEnter', config = true },
    { 'kylechui/nvim-surround', event = 'VeryLazy', config = true },
    { 'numToStr/Comment.nvim', config = true },
    { 'folke/which-key.nvim', event = 'VeryLazy', config = true },
    { 'lukas-reineke/indent-blankline.nvim', main = 'ibl', config = true },
})
