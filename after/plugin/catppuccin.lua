vim.cmd.colorscheme "catppuccin"

require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false, -- disables setting the background color.
    float = {
        transparent = true, -- enable transparent floating windows
        solid = true, -- use solid styling for floating windows, see |winborder|
    },
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
    },
    lsp_styles = { -- Handles the style of specific lsp hl groups (see `:h lsp-highlight`).
        virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
            ok = { "italic" },
        },
        underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
            ok = { "underline" },
        },
        inlay_hints = {
            background = true,
        },
    },
    color_overrides = {},
    custom_highlights = {},
    default_integrations = true,
    auto_integrations = false,
    integrations = {
        cmp = true,
        gitsigns = true,
	neotree = true,
        nvimtree = true,
        notify = false,
	telescope = {
		enabled = true,
	},
        mini = {
            enabled = true,
            indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
-- then load OneDark highlight groups (syntax)
local colors = require("onedarkpro.helpers").get_colors("onedark") -- or "onelight"
local set_hl = vim.api.nvim_set_hl

-- 3️⃣ Apply OneDarkPro syntax highlights manually
-- You can extend or tweak these groups as you like
set_hl(0, "Keyword",     { fg = colors.purple })
set_hl(0, "Function",    { fg = colors.blue })
set_hl(0, "String",      { fg = colors.green })
set_hl(0, "Type",        { fg = colors.yellow })
set_hl(0, "Constant",    { fg = colors.orange })
set_hl(0, "Number",      { fg = colors.orange })
set_hl(0, "Boolean",     { fg = colors.red })
set_hl(0, "Comment",     { fg = colors.gray, italic = true })
set_hl(0, "Operator",    { fg = colors.cyan })
set_hl(0, "Identifier",  { fg = colors.cyan })

-- Variables, fields, and properties
set_hl(0, "@variable",              { fg = colors.red })  -- all variables
set_hl(0, "@variable.builtin",      { fg = colors.red })
set_hl(0, "@variable.parameter",    { fg = colors.red })
set_hl(0, "@field",                 { fg = colors.red })  -- object fields
set_hl(0, "@property",              { fg = colors.red })  -- object properties

-- (optional) also apply to LSP semantic tokens, for some language servers
set_hl(0, "@lsp.type.variable",     { fg = colors.red })
set_hl(0, "@lsp.type.property",     { fg = colors.red })
set_hl(0, "@lsp.typemod.property",  { fg = colors.red })
set_hl(0, "@lsp.typemod.member",    { fg = colors.red })

