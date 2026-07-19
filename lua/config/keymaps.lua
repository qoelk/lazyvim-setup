-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Restore default H, L, M behavior (top/middle/bottom of screen)
vim.keymap.set("n", "H", "H", { desc = "Top of screen" })
vim.keymap.set("n", "M", "M", { desc = "Middle of screen" })
vim.keymap.set("n", "L", "L", { desc = "Bottom of screen" })
