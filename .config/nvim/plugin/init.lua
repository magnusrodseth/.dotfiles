local use = require('packer').use

require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'tmsvg/pear-tree' -- Pair parenthesis
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function()
      require('lualine').setup(require('custom.lualine'))
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
    'hrsh7th/nvim-cmp',
    requires = {
      'neovim/nvim-lspconfig',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip'
    },
    config = function()
      require('cmp').setup(require('custom.nvim_cmp'))
    end
  } -- Autocomplete
  use {
    'rafamadriz/friendly-snippets',
    requires = {
      'L3MON4D3/LuaSnip'
    }
  } -- Snippets
  use {
    'tzachar/cmp-tabnine',
    run = './install.sh',
    requires = 'hrsh7th/nvim-cmp',
    config = function()
      require('cmp_tabnine.config'):setup({
        max_lines = 1000;
        max_num_results = 3;
        sort = true;
        run_on_every_keystroke = true;
        snippet_placeholder = '..';
        show_prediction_strength = false;
      })
    end
  } -- Tabnine
  use {
    'f-person/git-blame.nvim',
    config = function()
      vim.g.gitblame_message_template = '<author> • <date>'
      vim.g.gitblame_date_format = '%r'
    end
  } -- Git blame
  use {
    'onsails/lspkind.nvim',
  } -- LSP icons
  use {
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup()
    end
  } -- Surround operations
  use {
    'sunjon/shade.nvim',
  } -- Dim inactive windows
  use {
    'stevearc/dressing.nvim'
  } -- Improve vim.ui interface
  use {
    'saecki/crates.nvim',
    event = { "BufRead Cargo.toml" },
    requires = { { 'nvim-lua/plenary.nvim' } },
    config = function()
      require('crates').setup()
    end,
  } -- Cargo dependency management
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {}
    end
  } -- Highlight and search important comments
end)
