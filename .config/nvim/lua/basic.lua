vim.api.nvim_set_option("langmenu", "en_US")

vim.api.nvim_set_option("tabstop", 4)
vim.api.nvim_set_option("softtabstop", 4)
vim.api.nvim_set_option("backspace", "indent,eol,start")
vim.api.nvim_set_option("shiftwidth", 4)
vim.api.nvim_set_option("expandtab", true)
vim.api.nvim_set_option("smartindent", true)
vim.api.nvim_set_option("relativenumber", true)
vim.api.nvim_set_option("number", true)

vim.api.nvim_set_option("smartcase", true)
vim.api.nvim_set_option("incsearch", true)

vim.api.nvim_set_option("colorcolumn", "90")
vim.cmd("highlight ColorColumn ctermbg=0 guibg=lightgrey")

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync(nil, 1000)]]
