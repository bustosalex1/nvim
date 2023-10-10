return {
  'nvimtools/none-ls.nvim',
  config = function()
    local null_ls = require 'null-ls'
    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics

    null_ls.setup {
      debug = false,
      sources = {
        diagnostics.chktex,
        diagnostics.ruff,
        formatting.bibclean,
        formatting.black,
        formatting.gofumpt,
        formatting.isort,
        formatting.latexindent,
        formatting.nixfmt,
        formatting.prettier,
        formatting.rustfmt,
        formatting.shfmt,
        formatting.stylua,
      },
    }
  end,
}
