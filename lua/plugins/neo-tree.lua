return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.opt.termguicolors = true
		vim.keymap.set("n", "<C-n>", ":Neotree source=filesystem action=focus position=left toggle=true<CR>")


  

		require("neo-tree").setup({
			close_if_last_window = true,

			default_component_configs = {
				icon = {
					folder_open = "",
					folder_closed = "",
          folder_empty = "",
				},
        indent = {
          with_markers = true;
          last_indent_marker = "└"
        },
			},

		})
	end,
}
