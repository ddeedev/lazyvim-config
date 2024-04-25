return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      open_mapping = "<leader>tt",
      shade_terminals = false,
      -- add --login so ~/.zprofile is loaded
      -- https://vi.stackexchange.com/questions/16019/neovim-terminal-not-reading-bash-profile/16021#16021
      shell = "zsh --login",
    })
  end,
  keys = {
    { "<leader>tt" },
    { "<leader>0", "<Cmd>2ToggleTerm<Cr>", desc = "Terminal #2" },
    {
      "<leader>td",
      "<cmd>ToggleTerm size=40 direction=horizontal<cr>",
      desc = "Open a large horizontal terminal",
    },
  },
}
