vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<esc>", ":nohl<CR>", { desc = "Clear search highlights" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<A-l>", "<cmd>bnext<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<A-h>", "<cmd>bprev<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>bx", "<cmd>bdelete<cr>", { desc = "Bufferline close buffer" }) -- close buffer

-- terminal
keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>", { desc = "Toggle Term" })
keymap.set("n", "<leader>ts", "<cmd>ToggleTermSendCurrentLine<cr>", { desc = "Toggle Term Send Current Line to Term" })
keymap.set("v", "<leader>tv", "<cmd>ToggleTermSendVisualLines<cr>", { desc = "Toggle Term send visual lines" })
