-- set wideness
vim.keymap.set("n", "]", "<cmd>vertical resize +1<cr>")
vim.keymap.set("n", "[", "<cmd>vertical resize -1<cr>")

-- set height
vim.keymap.set("n", "}", "<cmd>horizontal resize +1<cr>")
vim.keymap.set("n", "{", "<cmd>horizontal resize -1<cr>")


vim.api.nvim_set_keymap('n', '<C-Left>',  '<C-W>h',  {noremap = true})
vim.api.nvim_set_keymap('n', '<C-Right>', '<C-W>l', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-Up>',    '<C-W>k',    {noremap = true})
vim.api.nvim_set_keymap('n', '<C-Down>',  '<C-W>j',  {noremap = true})
