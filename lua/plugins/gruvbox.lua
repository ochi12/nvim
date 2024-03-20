return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  opts = ...,
  config = function()
    require("gruvbox").setup({
      contrast = "",
      terminal_colors = true,
      undercurl = true,
    })
    vim.cmd("colorscheme gruvbox")
  end,
}
