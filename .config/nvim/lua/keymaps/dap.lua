local map = require("keymaps.utils").map
local opts = { noremap = true, silent = true }

map("n", "<leader>dbg", "<Cmd>lua require'dap'.continue()<CR>", opts)
map("n", "<leader>so", "<Cmd>lua require'dap'.step_over()<CR>", opts)
map("n", "<leader>si", "<Cmd>lua require'dap'.step_into()<CR>", opts)
map("n", "<leader>b", "<Cmd>lua require'dap'.toggle_breakpoint()<CR>", opts)
