return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "#202020", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "#202020", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { bg = "#202020", ctermbg = "NONE" })

    vim.opt.termguicolors = true
    vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>")
    require("neo-tree").setup({
      close_if_last_window = true,
      reveal_force_cwd = true,

      default_component_configs = {
        icon = {
          folder_open = "",
          folder_closed = "",
          folder_empty = "",
        },
        indent = {
          with_markers = true,
          last_indent_marker = "└",
          expander_collapsed = "",
          expander_expanded = "",
          expander_highlight = "NeoTreeExpander",
        },
      },

      source_selector = {
        statusline = false,
        winbar = false,
      },

      filesystem = {
        follow_current_file = {
          enabled = true,
        },
      },
    })
  end,
}
