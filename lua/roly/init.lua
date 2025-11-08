vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"

vim.o.updatetime = 300  -- faster update (default is 4000ms)
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false })
  end,
})

vim.opt.number = true

require("roly.remap")
print("hello from roly :o")
