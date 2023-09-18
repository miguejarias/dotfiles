vim.cmd [[
    "hide cmd line prompt after enter
    augroup cmdline
        autocmd!
        autocmd CmdlineLeave : echo ''
    augroup end

    "auto format any file with lsp formatter on save
    "autocmd BufWritePre * lua vim.lsp.buf.format()
]]
