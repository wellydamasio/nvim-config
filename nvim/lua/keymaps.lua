-- Space Bar as Leader Key
vim.g.mapleader = " "

-- Buffers
vim.keymap.set("n", "<leader>n", ":bn<cr>")
vim.keymap.set("n", "<leader>p", ":bp<cr>")
vim.keymap.set("n", "<leader>x", ":bd<cr>")

-- Yank to Clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
