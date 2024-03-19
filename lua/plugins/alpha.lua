return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "nvim-lua/plenary.nvim" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		local theta = require("alpha.fortune")

		local green = vim.g.terminal_color_2
		local orange = vim.g.terminal_color_9
		vim.api.nvim_set_hl(0, "YonvimDashboardLogo1", { fg = green })
		vim.api.nvim_set_hl(0, "YonvimDashboardLogo2", { fg = orange })
 
		local logo = {
      [[         ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄        ]],
      [[       ▄▀                ▀▄      ]],       
      [[       █                  █      ]],
			[[       █         ▄▀▀▄     █▄▀▀▄  ]],
      [[       █         █   ▀▄▄▄▄▀   █  ]],
      [[       █        █             ▀▄ ]],
      [[       █        █   ▄█   ▄ ▄█  █ ]],
      [[       █        █    ▄  ▄  ▄   █ ]],
      [[       ▀▄        ▀▄  ▀▀▀▀▀▀▀ ▄▀  ]],-- ▄▀█ 
      [[         ▀▀▀▀▀▀▀▀▀▀█▀▀█▀█▀▀█▀    ]],
      [[                    ▀▀▀  ▀▀      ]]
	  }
		dashboard.section.header.val = logo

		dashboard.section.header.opts.hl = "YonvimDashboardLogo2"
		dashboard.section.footer.val = theta()

		alpha.setup(dashboard.opts)
		vim.cmd([[
      autocmd FileType alpha setlocal nofoldenable
    ]])
	end,
}
