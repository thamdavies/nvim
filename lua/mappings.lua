require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Github Copilot
map('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})

-- Harpoon
local harpoon = require("harpoon")

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)
vim.keymap.set("n", "<leader><C-h>", function() harpoon:list():replace_at(1) end)
vim.keymap.set("n", "<leader><C-t>", function() harpoon:list():replace_at(2) end)
vim.keymap.set("n", "<leader><C-n>", function() harpoon:list():replace_at(3) end)
vim.keymap.set("n", "<leader><C-s>", function() harpoon:list():replace_at(4) end)
