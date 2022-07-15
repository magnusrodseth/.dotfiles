local map = require("keymaps.utils").map

map("n", "<leader>h", ":wincmd h<CR>")
map("n", "<leader>j", ":wincmd j<CR>")
map("n", "<leader>k", ":wincmd k<CR>")
map("n", "<leader>l", ":wincmd l<CR>")
map("n", "j", "jzz")
map("n", "k", "kzz")
map("n", "G", "Gzz")
map("n", "Y", "y$")
map("n", "<leader>w<leader>s", ":w <bar> :source % <CR>")
