return {
  'hrsh7th/nvim-cmp',
  config = function()
    local cmp = require'cmp'

    local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

    cmp.setup({
      snippet = {
        expand = function(args)
          vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        end,
      },
      window = {
        completion = {
          col_offset = -5,
          side_padding = 1,
        }
      },
      confirmation = {
        completeopt = { 'menu,menuone,noinsert'}
      },
      preselect = {
        cmp.PreselectMode.None
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        -- { name = 'luasnip' }, -- For luasnip users.
        { name = 'buffer' },
      }),
      experimental = {
        native_menu = false,
        ghost_text = true,
      },
    })

    -- nvim-cmp: Set configuration for specific filetype.
    cmp.setup.filetype('gitcommit', {
      sources = cmp.config.sources({
        { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
      }, {
        { name = 'buffer' },
      })
    })
  end
}
