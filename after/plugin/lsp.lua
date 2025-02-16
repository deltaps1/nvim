vim.g.lsp_zero_extend_lspconfig = 0

local lsp_zero = require('lsp-zero')
lsp_zero.extend_lspconfig()

-- lsp_zero.preset('manual')
lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { "lua_ls", "pyright" }, -- Tilføj de LSP-servere du vil bruge
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,
  },
})

local cmp = require('cmp')
local cmp_action = lsp_zero.cmp_action()

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  snippet = {
    expand = function(args)
        require('luasnip').lsp_expand(args.body)
    end,
    },
    preselect = cmp.PreselectMode.Item,
    completion = {
    completeopt = 'menu,menuone,noinsert'
  },
  mapping = cmp.mapping.preset.insert({
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = true}),

    -- `Tab` completes
    ['<Tab>'] = cmp_action.tab_complete(),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),

    -- Navigate between snippet placeholder
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),

    -- Scroll up and down in the completion documentation
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),

    -- OBS:
    -- gd hopper til definition under cursoren

  })
})
