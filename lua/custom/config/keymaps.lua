-- quick press jk to exit insert mode
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true, silent = true })

-- navigate buffers
vim.keymap.set('n', '<S-l>', ':bnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<S-h>', ':bprevious<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>c', ':Bdelete!<CR>', { noremap = true, silent = true, desc = 'Close current buffer.' })

-- idk, maybe this doesn't belong here, but basically for things like search and telescope, make it so `q` can exit the prompt.
local _general_settings = vim.api.nvim_create_augroup('_general_settings', { clear = true })

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'qf', 'help', 'man', 'lspinfo', 'TelescopePrompt' },
  group = _general_settings,
  callback = function()
    vim.schedule(function()
      vim.api.nvim_buf_set_keymap(0, 'n', 'q', ':close!<CR>', { noremap = true, silent = true })
    end)
  end,
})
