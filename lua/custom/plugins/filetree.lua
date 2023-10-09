return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      update_focused_file = {
        enable = true,
        update_cwd = true,
      },
      renderer = {
        root_folder_modifier = ':t',
        icons = {
          glyphs = {
            default = '',
            symlink = '',
            folder = {
              arrow_open = '',
              arrow_closed = '',
              default = '',
              open = '',
              empty = '',
              empty_open = '',
              symlink = '',
              symlink_open = '',
            },
            git = {
              unstaged = '',
              staged = 'S',
              unmerged = '',
              renamed = '➜',
              untracked = 'U',
              deleted = '',
              ignored = '◌',
            },
          },
        },
      },
      diagnostics = {
        enable = false,
        show_on_dirs = false,
        icons = {
          hint = '',
          info = '',
          warning = '',
          error = '',
        },
      },
      view = {
        width = 30,
        side = 'left',
      },
    }
    vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { silent = true, desc = 'Toggle Filetree.' })
  end,
}
