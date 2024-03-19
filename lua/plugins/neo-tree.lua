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

		vim.keymap.set("n", "<leader>1", ":Neotree source=filesystem action=focus position=left toggle=true<CR>")
		vim.keymap.set("n", "<leader>2", ":Neotree source=buffers action=focus position=left toggle=true<CR>")
		vim.keymap.set("n", "<leader>3", ":Neotree source=git_status action=focus position=left toggle=true<CR>")

		-- colors
		vim.api.nvim_set_hl(0, "unfocused", { fg = "#282828" })

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
