-- orgmode clone for neovim, basically. Just adding support for .org files.
return {
  'nvim-orgmode/orgmode',
  dependencies = {
    { 'nvim-treesitter/nvim-treesitter', lazy = true },
  },
  config = function()
    -- Load treesitter grammar for org

    -- Setup treesitter
    require('nvim-treesitter.configs').setup {
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'org' },
      },
      ensure_installed = { 'org' },
    }

    -- Setup orgmode
    require('orgmode').setup {
      org_agenda_files = { '~/Documents/notes/**/*' },
      org_todo_keywords = { 'TODO', 'DOING', '|', 'DONE' },
      org_todo_keyword_faces = {
        DOING = ':foreground #fcba03 :weight bold',
      },
      org_default_notes_file = '~/Documents/notes/refile.org',
      org_archive_location = '~/Documents/notes/archive.org_archive',
      org_hide_emphasis_markers = true,
    }
  end,
}
