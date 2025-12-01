require("conform").setup({
    formatters_by_ft = {
        javascript = { "biome" },
        typescript = { "biome" },
        javascriptreact = { "biome" },
        typescriptreact = { "biome" },
        json = { "biome" },
    },
    format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
    },
})
