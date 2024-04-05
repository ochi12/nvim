
return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "nvim-lua/plenary.nvim" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    local theta = require("alpha.fortune")

    local bright_green = vim.g.terminal_color_10
    local orange = vim.g.terminal_color_9
    local gray = vim.g.terminal_color_0
    vim.api.nvim_set_hl(0, "header", {fg = bright_green})
    vim.api.nvim_set_hl(0, "footer", {fg = orange})
    local logo = {
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                     ]],
			[[       ████ ██████           █████      ██                     ]],
			[[      ███████████             █████                             ]],
			[[      █████████ ███████████████████ ███   ███████████   ]],
			[[     █████████  ███    █████████████ █████ ██████████████   ]],
			[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
			[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
			[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]]
		}
    dashboard.section.header.val = logo
    dashboard.section.header.opts.hl = "header"

    dashboard.section.footer.val = theta()

    alpha.setup(dashboard.opts)
    vim.cmd([[
      autocmd FileType alpha setlocal nofoldenable
    ]])
  end,
}
