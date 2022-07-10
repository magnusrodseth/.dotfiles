local M = {}

function M.map(mode, leftHandSide, rightHandSide, options)
  local options = { noremap = true }

  if options then
    options = vim.tbl_extend("force", options, options)
  end
  vim.api.nvim_set_keymap(mode, leftHandSide, rightHandSide, options)
end

return M
