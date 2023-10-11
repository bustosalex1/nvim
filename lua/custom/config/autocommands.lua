-- autocommands??
local _org = vim.api.nvim_create_augroup('_org', { clear = true })
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'org',
  group = _org,
  callback = function(args)
    local bufnr = args.buf
    vim.opt_local['shiftwidth'] = 2
    vim.opt_local['tabstop'] = 2
    vim.opt_local['textwidth'] = 100
    vim.opt_local['conceallevel'] = 3

    vim.api.nvim_create_autocmd('BufWritePre', {
      group = _org,
      buffer = bufnr,
      callback = function()
        vim.cmd [[
        let w:v = winsaveview()
        silent normal gggqG
        call winrestview(w:v)
        ]]
      end,
    })
  end,
})
