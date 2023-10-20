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

    -- I basically copied this from my old config. Just makes colors nice, as far as I can tell.
    highlights = {
      fill = {
        fg = { attribute = 'fg', highlight = 'TabLine' },
        bg = { attribute = 'bg', highlight = 'TabLine' },
      },
      background = {
        fg = { attribute = 'fg', highlight = 'TabLine' },
        bg = { attribute = 'bg', highlight = 'TabLine' },
      },
      buffer_visible = {
        fg = { attribute = 'fg', highlight = 'TabLine' },
        bg = { attribute = 'bg', highlight = 'TabLine' },
      },

      close_button = {
        fg = { attribute = 'fg', highlight = 'TabLine' },
        bg = { attribute = 'bg', highlight = 'TabLine' },
      },
      close_button_visible = {
        fg = { attribute = 'fg', highlight = 'TabLine' },
        bg = { attribute = 'bg', highlight = 'TabLine' },
      },
      tab_selected = {
        fg = { attribute = 'fg', highlight = 'Normal' },
        bg = { attribute = 'bg', highlight = 'Normal' },
      },
      tab = {
        fg = { attribute = 'fg', highlight = 'TabLine' },
        bg = { attribute = 'bg', highlight = 'TabLine' },
      },
      tab_close = {
        fg = { attribute = 'fg', highlight = 'TabLineSel' },
        bg = { attribute = 'bg', highlight = 'Normal' },
      },

      duplicate_selected = {
        fg = { attribute = 'fg', highlight = 'TabLineSel' },
        bg = { attribute = 'bg', highlight = 'TabLineSel' },
        underline = true,
      },
      duplicate_visible = {
        fg = { attribute = 'fg', highlight = 'TabLine' },
        bg = { attribute = 'bg', highlight = 'TabLine' },
        underline = true,
      },
      duplicate = {
        fg = { attribute = 'fg', highlight = 'TabLine' },
        bg = { attribute = 'bg', highlight = 'TabLine' },
        underline = true,
      },

      modified = {
        fg = { attribute = 'fg', highlight = 'TabLine' },
        bg = { attribute = 'bg', highlight = 'TabLine' },
      },
      modified_selected = {
        fg = { attribute = 'fg', highlight = 'Normal' },
        bg = { attribute = 'bg', highlight = 'Normal' },
      },
      modified_visible = {
        fg = { attribute = 'fg', highlight = 'TabLine' },
        bg = { attribute = 'bg', highlight = 'TabLine' },
      },

      separator = {
        fg = { attribute = 'bg', highlight = 'TabLine' },
        bg = { attribute = 'bg', highlight = 'TabLine' },
      },
      separator_selected = {
        fg = { attribute = 'bg', highlight = 'Normal' },
        bg = { attribute = 'bg', highlight = 'Normal' },
      },
      indicator_selected = {
        fg = { attribute = 'fg', highlight = 'LspDiagnosticsDefaultHint' },
        bg = { attribute = 'bg', highlight = 'Normal' },
      },
    },
  },
}
