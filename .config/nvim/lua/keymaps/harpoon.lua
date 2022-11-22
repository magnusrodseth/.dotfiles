local map = require("keymaps.utils").map

map("n", "hpm", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>")
map("n", "hpa", "<cmd>lua require('harpoon.mark').add_file()<cr>")
map("n", "hp1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>")
map("n", "hp2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>")
map("n", "hp3", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>")
map("n", "hp4", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>")
map("n", "hp5", "<cmd>lua require('harpoon.ui').nav_file(5)<cr>")
