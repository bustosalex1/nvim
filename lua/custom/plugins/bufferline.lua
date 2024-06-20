return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {
    options = {
      close_command = 'Bdelete! %d',
      right_mouse_command = 'Bdelete! %d',
      diagnostics = 'nvim_lsp',
      diagnostics_update_in_insert = false,

      -- don't show the bufferline on NvimTree tabs
      offsets = { { filetype = 'NvimTree', text = '', padding = 1 } },
    },
  },
}
