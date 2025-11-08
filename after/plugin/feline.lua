vim.o.laststatus = 3

-- Load Catppuccin Feline components
local ctp_feline = require('catppuccin.special.feline')
local components = ctp_feline.get_statusline()

-- Setup Feline
require("feline").setup({
    components = components,
    -- Make certain filetypes/windows inactive (Neo-tree won't block the statusline)
    force_inactive = {
        filetypes = { "neo-tree", "NvimTree", "lir" },
        buftypes  = {},
        bufnames  = {},
    },
})
