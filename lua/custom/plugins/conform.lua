-- Plugin to format on save
return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      python = { 'ruff' },
      lua = { 'stylua' },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_format = 'last',
    },
  },
}
