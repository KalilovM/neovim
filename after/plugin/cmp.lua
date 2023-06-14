local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["UltiSnips#Anon"](args.body)
    end
  },
  sources = {
    { name = "path" },
    { name = 'nvim_lsp' },
    { name = 'buffer',   keyword_length = 3 },
    { name = 'luasnip',  keyword_length = 2 },
    { name = 'ultisnips' }
  }
})
