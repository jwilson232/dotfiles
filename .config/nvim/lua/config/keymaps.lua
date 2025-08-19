vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", {desc="Open parent directory in old"})
vim.keymap.set("n", "<Tab>", "<C-w><C-w>", {desc="Moves to next split buffer with tab"})
vim.keymap.set("n", "t", "<cmd> vs term://zsh<CR>", {desc="Moves to next split buffer with tab"})
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>", {noremap = true})
vim.keymap.set('n', '<Space>', '<Nop>')
vim.keymap.set('n', 'gl', function() vim.diagnostic.open_float() end )

