local map = require("keymaps.utils").map
local opts = { noremap = true, silent = true }

-- Suggested actions
map("n", "<leader>sug", "<cmd>CodeActionMenu<cr>", opts)
