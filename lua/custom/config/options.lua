vim.opt.clipboard = 'unnamedplus' -- use system clipboard
vim.opt.cursorline = true         -- highlight the current line
vim.opt.expandtab = true          -- expand tabs to spaces
vim.opt.number = true             -- number lines
vim.opt.numberwidth = 4           -- set number column width to 4
vim.opt.pumheight = 10            -- limit height of autocomplete popups
vim.opt.relativenumber = true     -- use relative line numberings, this just makes more sense to me
vim.opt.showmode = false          -- no need to show the mode anymore
vim.opt.shortmess:append 'c'      -- don't give |ins-completion-menu| messages
vim.opt.undofile = true           -- enable persistent undo
vim.opt.cmdheight = 2             -- more space in the nvim command line so we get fewer hit ENTER type messages
