map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }
vim.g.mapleader = "<Space>"

-- Neotree Keybinds
map("n", "<C-n>", ":NeoTreeShowToggle<CR>", options)

-- Bufferline
map("n", "<C-right>", ":bnext<CR>", { noremap = true, silent = false })
map("n", "<C-left>", ":bprevious<CR>", { noremap = true, silent = false })
map("n", "<C-q>", ":BufferLinePickClose<CR>", { noremap = true, silent = false })

-- Neoformater
map("n", "<c-f>", ":Neoformat<CR>", options)

-- naviagtion keys
map("n", "<C-h>", "<C-w>h", options)
map("n", "<C-j>", "<C-w>j", options)
map("n", "<C-k>", "<C-w>k", options)
map("n", "<C-l>", "<C-w>l", options)

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", options)

-- Misc
map("n", "<C-A-t>", ":term<CR>", options)
