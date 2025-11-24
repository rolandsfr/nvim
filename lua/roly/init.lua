vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"

vim.o.updatetime = 300  -- faster update (default is 4000ms)
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false })
  end,
})

vim.opt.number = true

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.expandtab = true   -- optional
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

require("roly.remap")
print("hello from roly :o")
