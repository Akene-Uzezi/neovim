vim.g.mapleader = " "
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })
-- Move lines up/down in Normal mode
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", { desc = "Move line up" })

-- Move lines up/down in Visual mode
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- If err != nil keymap
vim.keymap.set("n", "<leader>rr", "oif err != nil {\n\treturn err\n}<Esc>")
