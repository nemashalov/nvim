return {{
  "hrsh7th/nvim-cmp",
  config =function()
    local cmp = require('cmp')
    cmp.setup({
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'buffer' },
      }),
      mapping = cmp.mapping.preset.insert({
        ['<M-b>'] = cmp.mapping.scroll_docs(-4),
        ['<M-f>'] = cmp.mapping.scroll_docs(4),
        ['<M-Space>'] = cmp.mapping.complete(),
        ['<M-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ['<Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          else
            fallback()  -- falls back to <Tab> = indent or whatever your normal tab does
          end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          else
            fallback()
          end
        end, { 'i', 's' }),
      }),
    })
 
  end
}}
