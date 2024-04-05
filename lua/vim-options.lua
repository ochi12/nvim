vim.g.mapleader = " "

vim.cmd(":set tabstop=2")
vim.cmd(":set shiftwidth=2")
vim.cmd(":set expandtab")
vim.cmd(":set smarttab")

-- auto cd

vim.cmd(":set rnu")
vim.keymap.set("n", "<leader>rn", ":set nonumber rnu<CR>")
vim.keymap.set("n", "<leader>an", ":set nornu number<CR>")
vim.keymap.set("n", "<leader>nn", ":set nornu nonumber<CR>")

vim.keymap.set("n", "<leader>nh", ":nohlsearch<CR>")

--  clipboard
vim.cmd("set clipboard=unnamedplus")
vim.keymap.set("n", "<leader>c", '"+y')
vim.keymap.set("n", "<leader>cc", '"+yy')
vim.keymap.set("v", "<leader>c", '"+y')


-- fancy title
vim.opt.title = true
vim.opt.titlelen = 0
vim.opt.titlestring = "   e   o   v   i   m"

-- set syntax shorten
vim.keymap.set("n", "x16", ":set syntax=x16<CR>")
