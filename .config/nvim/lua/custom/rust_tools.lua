-- The extension_path must point to where the VSCode extension 'CodeLLDB' is installed
local extension_path = vim.env.HOME .. '/.vscode/extensions/vadimcn.vscode-lldb-1.7.3'
local codelldb_path = extension_path .. 'adapter/codelldb'
local liblldb_path = extension_path .. 'lldb/lib/liblldb.so'

local settings = {
    tools = {
        autoSetHints = true,
        inlay_hints = {
            only_current_line = false,
            show_parameter_hints = true,
        }
    },

    -- ... other configs

    dap = {
        adapter = require('rust-tools.dap').get_codelldb_adapter(
            codelldb_path, liblldb_path)
    }
}

return settings
