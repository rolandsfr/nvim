vim.lsp.config('luals', {
  cmd = {'lua-language-server'},
  filetypes = {'lua'},
  root_markers = {'.luarc.json', '.luarc.jsonc'},
  settings = {
	  Lua = {
		  runtime = {
			  version = "LuaJIT", -- Neovim uses LuaJIT
		  },
		  diagnostics = {
			  globals = { "vim" }, -- <— this fixes the red underline
		  },
		  workspace = {
			  library = {
				  vim.env.VIMRUNTIME, -- include Neovim runtime files
			  },
			  checkThirdParty = false, -- avoid asking about third-party libraries
		  },
		  telemetry = { enable = false },
	  },
  }
})

vim.lsp.config("clangd", {
	cmd = { "clangd", "--background-index", "--clang-tidy", "--completion-style=detailed" },
	filetypes = { "c", "cpp", "objc", "objcpp" },
root_dir = function(fname)
    if type(fname) ~= "string" then
      return vim.loop.cwd()
    end

    local found = vim.fs.find({ "compile_commands.json", ".git" }, { upward = true, path = fname })[1]
    if not found then return vim.loop.cwd() end

    local dir = vim.fn.fnamemodify(found, ":h")
    print("clangd root_dir:", dir)  -- <— put it here for debugging
    return dir
  end,
})

vim.lsp.config("tsserver", {
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
	root_markers = { "tsconfig.json", "package.json", ".git" },
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(event)
    local bufmap = function(mode, rhs, lhs)
      vim.keymap.set(mode, rhs, lhs, {buffer = event.buf})
    end

    bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
    bufmap('i', '<C-h>', '<cmd>lua vim.lsp.buf.signature_help()')
  end,
})

vim.lsp.enable('luals')
vim.lsp.enable('tsserver')
vim.lsp.enable('clangd')
