local M = {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false, -- ensure it's loaded during startup
  priority = 1000, -- load this before all other start plugins
}

function M.config()
  vim.cmd.colorscheme "catppuccin"
end

return M

