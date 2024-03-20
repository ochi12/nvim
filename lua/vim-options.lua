vim.g.mapleader = " "

-- default
vim.cmd(":set tabstop=2")
vim.cmd(":set shiftwidth=2")
vim.cmd(":set expandtab")
vim.cmd(":set smarttab")


vim.cmd([[
  autocmd BufRead,BufNewFile *.s setlocal expandtab shiftwidth=10 tabstop=10
]])
vim.cmd([[
  autocmd BufRead,BufNewFile *.asm setlocal expandtab shiftwidth=10 tabstop=10
]])

-- makefile
vim.cmd([[
  autocmd BufRead,BufNewFile *.mk setlocal expandtab shiftwidth=4 tabstop=4
]])
vim.cmd([[
  autocmd BufRead,BufNewFile *.makefile setlocal expandtab shiftwidth=4 tabstop=4]])
--

vim.cmd(":set rnu")
vim.keymap.set("n", "<leader>rn", ":set nonumber rnu<CR>")
vim.keymap.set("n", "<leader>an", ":set nornu number<CR>")
vim.keymap.set("n", "<leader>nn", ":set nornu nonumber<CR>")

vim.keymap.set("n", "<leader>nh", ":nohlsearch<CR>")

--  clipboard
vim.cmd("set clipboard=unnamedplus")
vim.keymap.set("n", "<leader>c", '"+y')
vim.keymap.set("n", "<leader>cc", '"+yy')
