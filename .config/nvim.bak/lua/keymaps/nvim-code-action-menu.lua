local map = require("keymaps.utils").map
local opts = { noremap = true, silent = true }

-- Code actions
map("n", "<leader>ca", "<cmd>CodeActionMenu<cr>", opts)
