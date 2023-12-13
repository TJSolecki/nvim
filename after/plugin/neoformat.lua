vim.cmd("let g:neoformat_try_node_exe = 1");
vim.cmd("autocmd BufWritePre *.ts* Neoformat");
-- Use formatprg when available
-- vim.cmd("autocmd FileType typescript setlocal formatprg=prettier --tab-width=4");
vim.cmd("let g:neoformat_try_node_exe = 1")
