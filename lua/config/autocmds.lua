-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Disable Copilot by default on startup
vim.api.nvim_create_autocmd("VimEnter", {
  desc = "Disable Copilot by default on startup",
  callback = function()
    vim.cmd("Copilot disable")
    vim.g.copilot_enabled = false
  end,
})
