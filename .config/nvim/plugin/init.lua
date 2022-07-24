local use = require('packer').use

require('packer').startup(function()
    use 'wbthomason/packer.nvim' -- Package manager
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use 'tmsvg/pear-tree' -- Pair parenthesis
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function()
            require('lualine').setup()
        end
    } -- Status bar at the bottom of the screen
    use "lukas-reineke/indent-blankline.nvim" -- Guide lines for tab spacing
    use 'navarasu/onedark.nvim' -- OneDark theme
    use { "ellisonleao/gruvbox.nvim" } -- Gruvbox theme
    use "rebelot/kanagawa.nvim" -- Kanagawa theme
    use 'kdheepak/lazygit.nvim' -- Calling LazyGit within Neovim
    use 'vim-utils/vim-man' -- Man pages
    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
    } -- Telescope fuzzy finder
    use {
        "terrortylor/nvim-comment",
        config = function()
            require('nvim_comment').setup()
        end
    } -- Toggle comments       
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        config = function()
            require("nvim-tree").setup()
        end
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
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    } -- Git signs for tracking changes in a file
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            require('nvim-treesitter.install').update({ with_sync = true })
        end,
        config = function()
            require('nvim-treesitter.configs').setup({
                -- A list of parser names, or "all"
                ensure_installed = "all",
                rainbow = {
                    enable = true,
                    extended_mode = true,
                    max_file_lines = nil,
                    -- colors = {}, -- table of hex strings
                    -- termcolors = {} -- table of colour name strings
                }
            })
        end
    } -- Tree sitter
    use {
        'p00f/nvim-ts-rainbow',
        requires = { 'nvim-treesitter/nvim-treesitter' }
    } -- Colorize parenthesis, etc...
    use {
        'norcalli/nvim-colorizer.lua',
        config = function()
            require('colorizer').setup()
        end
    } -- Colorize hex codes
    use {
        'weilbith/nvim-code-action-menu',
        cmd = 'CodeActionMenu',
    } -- Code actions
    use {
        'kosayoda/nvim-lightbulb',
        requires = 'antoinemadec/FixCursorHold.nvim',
        config = function()
            require('nvim-lightbulb').setup({
                autocmd = {
                    enabled = true
                }
            })
        end
    } -- Visually inform if a code action is available
    use {
        "andrewferrier/vim-wrapping-softhard",
        config = function()
            require("wrapping").setup()
        end,
    } -- Wrap text
    use {
        'kevinhwang91/nvim-fFHighlight',
        config = function()
            require("fFHighlight").setup()
        end,
    } -- Highlight on 'f' and 'F'
    use {
        'simrat39/rust-tools.nvim',
        branch = 'modularize_and_inlay_rewrite',
        requires = {
            'neovim/nvim-lspconfig',
            'nvim-lua/plenary.nvim',
            'mfussenegger/nvim-dap'
        },
    } -- Rust tools
end)
