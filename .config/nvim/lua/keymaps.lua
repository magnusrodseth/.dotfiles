vim.g.mapleader = " "

function map(mode, leftHandSide, rightHandSide, options)
    local options = { noremap = true }
    if options then
        options = vim.tbl_extend("force", options, options)
    end
    vim.api.nvim_set_keymap(mode, leftHandSide, rightHandSide, options)
end

-- Native Vim keymaps
map("n", ",", "GA<CR>")
map("n", "<leader>h", ":wincmd h<CR>")
map("n", "<leader>j", ":wincmd j<CR>")
map("n", "<leader>k", ":wincmd k<CR>")
map("n", "<leader>l", ":wincmd l<CR>")
map("n", "j", "jzz")
map("n", "k", "kzz")
map("n", "G", "Gzz")
map("n", "Y", "y$")
map("n", "<leader>w<leader>s", ":w <bar> :source % <CR>")

-- Lazygit
map("n", "<leader>gitui", ":LazyGit<CR>")

-- Telescope
map("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
map("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
map("n", "<leader>of", "<cmd>lua require('telescope.builtin').oldfiles()<cr>")
map("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
map("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")

-- NvimTree
map("n", "<leader>pv", ":NvimTreeToggle<CR>")
