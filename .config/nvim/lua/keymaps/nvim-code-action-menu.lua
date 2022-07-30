local map = require("keymaps.utils").map
local opts = { noremap = true, silent = true }

-- Suggested actions
map("n", "<C-s>", "<cmd>CodeActionMenu<cr>", opts)
