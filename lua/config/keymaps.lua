-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

--tabs
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G")

--git
keymap.set("", "<space>j", ":Gitsigns nav_hunk next<CR>")
keymap.set("", "<space>k", ":Gitsigns nav_hunk prev<CR>")
--keymap.set('', '<space>u', ':GitGutterUndoHunk<CR>')

keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
