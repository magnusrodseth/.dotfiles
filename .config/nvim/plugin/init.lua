local use = require('packer').use

require('packer').startup(function()
    use 'wbthomason/packer.nvim' -- Package manager
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use 'tmsvg/pear-tree' -- Pair parenthesis
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    } -- Status bar at the bottom of the screen
    use "lukas-reineke/indent-blankline.nvim" -- Guide lines for tab spacing
    use 'navarasu/onedark.nvim' -- OneDark
    use { "ellisonleao/gruvbox.nvim" } -- Gruvbox
    use 'kdheepak/lazygit.nvim' -- Calling LazyGit within Neovim
    use 'vim-utils/vim-man' -- Man pages
    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
    } -- Telescope fuzzy finder
    use "terrortylor/nvim-comment" -- Toggle comments
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
    } -- Tree explorer
    use {
        'romgrk/barbar.nvim',
        requires = { 'kyazdani42/nvim-web-devicons' }
    } -- Tabs at the top of the page
    use {
        "startup-nvim/startup.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
        config = function()
            require "startup".setup(require "custom.startup_nvim")
        end
    } -- Startup screen
    use "lukas-reineke/lsp-format.nvim" -- Format
    use {
        "williamboman/nvim-lsp-installer",
        requires = { "neovim/nvim-lspconfig" }
    } -- LSP installer
    use {
        'ms-jpq/coq_nvim', branch = "coq", run = 'python3 -m coq deps'
    } -- Autocomplete
    use {
        'ms-jpq/coq.artifacts', branch = 'artifacts'
    } -- Snippets for autocomplete
    use {
        'ms-jpq/coq.thirdparty'
    } -- Third-party stuff for autocomplete
end)

require('lualine').setup()
require("nvim-tree").setup()
require('nvim_comment').setup()
