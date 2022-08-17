local map = require("keymaps.utils").map

map("n", "ham", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>")
map("n", "haa", "<cmd>lua require('harpoon.mark').add_file()<cr>")
map("n", "<C-1>", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>")
map("n", "<C-2>", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>")
map("n", "<C-3>", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>")
map("n", "<C-4>", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>")
