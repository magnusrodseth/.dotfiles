local rust_tools = require("rust-tools")
local options = {
  tools = {
    inlay_hints = {
      auto = true,
      parameter_hints_prefix = "<- ",
      other_hints_prefix = "-> ",
    }
  },

  -- All the options to send to nvim-lspconfig
  server = {
    on_attach = function(_, bufnr)
      vim.keymap.set("n", "<C-p>", rust_tools.hover_actions.hover_actions, { buffer = bufnr })
    end,
    settings = {
      -- ["rust-analyzer"] = {
      --   assist = {
      --     importEnforceGranularity = true,
      --     importPrefix = "crate"
      --   },
      --   cargo = {
      --     allFeatures = true
      --   },
      --   checkOnSave = {
      --     -- default: `cargo check`
      --     command = "clippy"
      --   },
      --   inlayHints = {
      --     lifetimeElisionHints = {
      --       enable = true,
      --       useParameterNames = true
      --     },
      --   },
      -- },
    }
  }
}

return options
