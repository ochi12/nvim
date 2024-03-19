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

		vim.keymap.set("n", " 1", ":Neotree source=filesystem action=focus position=left toggle=true<CR>")
		vim.keymap.set("n", " 2", ":Neotree source=buffers action=focus position=left toggle=true<CR>")
		vim.keymap.set("n", " 3", ":Neotree source=git_status action=focus position=left toggle=true<CR>")

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

			source_selector = {
				winbar = true, -- toggle to show selector on winbar
				statusline = true, -- toggle to show selector on statusline
				show_scrolled_off_parent_node = false, -- boolean
				sources = { -- table
					{
						source = "filesystem", -- string
						display_name = " 󰉓 Files", -- string | nil
					},
					{
						source = "buffers", -- string
						display_name = " 󰈚 Buffers ", -- string | nil
					},
					{
						source = "git_status", -- string
						display_name = " 󰊢 Git ", -- string | nil
					},
				},
				content_layout = "start", -- string
				tabs_layout = "equal", -- string
				truncation_character = "…", -- string
				tabs_min_width = nil, -- int | nil
				tabs_max_width = nil, -- int | nil
				padding = 0, -- int | { left: int, right: int }
				separator = { left = " ", right = " " }, -- string | { left: string, right: string, override: string | nil }
				separator_active = nil,
				show_separator_on_edge = false, -- boolean
				highlight_tab = "NeoTreeTabInactive", -- string
				highlight_tab_active = "NeoTreeTabActive", -- string
				highlight_background = "NeoTreeBackground", -- string
				highlight_separator = "NeoTreeTabSeparatorInactive", -- string
				highlight_separator_active = "NeoTreeTabSeparatorActive", -- string
			},

			autochdir = true,

			cwd_target = {
				target = "global",
				sidebar = "tab", -- sidebar is when position = left or right
				current = "window", -- current is when position = current
			},
		})
	end,
}
