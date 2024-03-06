require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    -- Use a sub-list to run only the first available formatter
    javascript = { { "prettierd", "prettier" } },
    typescript = { { "prettierd", "prettier" } },
    html = { { "prettierd", "prettier" } },
    css = { { "prettierd", "prettier" } },
    json = { { "prettierd", "prettier" } },
    php = { "pint" },
    blade = { "blade-formatter" }
  },
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
})
