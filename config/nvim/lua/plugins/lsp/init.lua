local lsp = require('lsp-zero').preset({})
local lspconfig = require('lspconfig')

lsp.preset('recommended')

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
  ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<Enter>'] = cmp.mapping.confirm({ select = true }),
})

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lspconfig.eslint.setup({
  on_attach = function(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end,
})

lspconfig.lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

vim.keymap.set("n", "<C-m>", ":Mason<CR>")
