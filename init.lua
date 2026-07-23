-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })
-- Move lines up/down in Normal mode
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", { desc = "Move line up" })

-- Move lines up/down in Visual mode
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Toggle comment with Ctrl + / (Normal Mode)
vim.keymap.set("n", "<C-/>", "gcc", { remap = true, desc = "Toggle comment" })
vim.keymap.set("n", "<C-_>", "gcc", { remap = true, desc = "Toggle comment" })

-- Toggle comment with Ctrl + / (Visual Mode)
vim.keymap.set("v", "<C-/>", "gc", { remap = true, desc = "Toggle comment" })
vim.keymap.set("v", "<C-_>", "gc", { remap = true, desc = "Toggle comment" })
