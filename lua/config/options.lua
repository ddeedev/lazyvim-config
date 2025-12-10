-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.autoformat = false
vim.opt.winbar = "%=%m %f"
-- vim.opt.winbar = " %#PmenuSel# %t "
-- vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
--
vim.cmd([[let g:tmux_navigator_disable_when_zoomed = 1]])

vim.o.termguicolors = true
