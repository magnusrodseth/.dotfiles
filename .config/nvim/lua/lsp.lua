local lsp_format = require('lsp-format')
lsp_format.setup {}

vim.o.updatetime = 250

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local options = { noremap = true, silent = true }
-- Jump to previous diagnostic, and center cursor
vim.keymap.set('n', '<leader>dk', vim.diagnostic.goto_prev, options)
-- Jump to next diagnostic, and center cursor
vim.keymap.set('n', '<leader>dj', vim.diagnostic.goto_next, options)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, options)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, buffer_number)
  lsp_format.on_attach(client)

  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(buffer_number, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local buffer_options = { noremap = true, silent = true, buffer = buffer_number }

  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, buffer_options)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, buffer_options)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, buffer_options)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, buffer_options)
  vim.keymap.set('n', '<C-p>', vim.lsp.buf.signature_help, buffer_options)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, buffer_options)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, buffer_options)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, buffer_options)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, buffer_options)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, buffer_options)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, buffer_options)
  vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, buffer_options)

  -- Display diagnostics using float, not to the right of the code
  vim.api.nvim_create_autocmd("CursorHold", {
    buffer = buffer_number,
    callback = function()
      local diagnostic_options = {
        focusable = false,
        close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
        border = 'rounded',
        source = 'always',
        prefix = ' ',
        scope = 'cursor',
      }
      vim.diagnostic.open_float(nil, diagnostic_options)
    end
  })
end


local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

local capabilities = require('cmp_nvim_lsp')
    .default_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Setup
local lsp_config = require('lspconfig')
local servers = {
  'astro',
  'clangd',
  'cssmodules_ls',
  'gopls',
  'jdtls',
  'marksman',
  'sumneko_lua',
  'svelte',
  'tailwindcss',
  'taplo',
  'tflint',
  'tsserver',
  'yamlls',
  'cmake',
  'cssls',
  'dockerls',
  'eslint',
  'graphql',
  'html',
  'jsonls',
  'kotlin_language_server',
  'lemminx',
  'ltex',
  'prismals',
  'pyright',
  'rust_analyzer',
  'terraformls',
}

for _, lsp in ipairs(servers) do
  lsp_config[lsp].setup({
    on_attach = on_attach,
    capabilities = capabilities,
    flags = lsp_flags,
    settings = {
      ["rust-analyzer"] = {
        assist = {
          importEnforceGranularity = true,
          importPrefix = "crate"
        },
        cargo = {
          allFeatures = true
        },
        checkOnSave = {
          -- default: `cargo check`
          command = "clippy"
        },
        inlayHints = {
          lifetimeElisionHints = {
            enable = true,
            useParameterNames = true
          },
        },
      },
      ["gopls"] = {
        analyses = {
          nilness = true,
          unusedparams = true,
          unusedwrite = true,
          useany = true,
        },
        gofumpt = true,
        staticcheck = true,
        usePlaceholders = true,
      }
    }
  })
end
