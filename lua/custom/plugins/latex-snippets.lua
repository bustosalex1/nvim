return {
  'iurimateus/luasnip-latex-snippets.nvim',
  -- vimtex isn't required if using treesitter
  requires = { 'L3MON4D3/LuaSnip' },
  config = function()
    require('luasnip-latex-snippets').setup { use_treesitter = true }
  end,
}
