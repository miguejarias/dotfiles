vim.cmd [[
    "hide cmd line prompt after enter
    augroup cmdline
        autocmd!
        autocmd CmdlineLeave : echo ''
    augroup end
]]
