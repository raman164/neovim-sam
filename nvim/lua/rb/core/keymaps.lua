vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- Showing line numbers
keymap.set("n", "<leader>nn", "<cmd>set nu!<CR>", { desc = "Show Line Numbers" })
keymap.set("n", "<leader>nr", ":set rnu!<CR>", { desc = "Show Relative Numbers" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- run code in terminal
keymap.set("n", "<leader>p", ":!python3 %<CR>")
keymap.set("n", "<leader>c", ":!g++ -Wall % && ./a.out<CR>")
keymap.set("n", "<leader>pm", ":w <CR>:vsp | terminal python3 % <CR>i")
keymap.set("n", "<leader>cm", ":w <CR> :!g++ % <CR> | :vsp |terminal ./a.out <CR>i")

-- quit = :q
keymap.set("n", "<leader>q", "<cmd>q<CR>")

-- Copy line down
keymap.set("n", "<C-d>", ":t.p<CR>", { desc = "Copy the line and paste it down", noremap = true })

-- Move visually selected lines up or down in various modes
keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move selected lines up or down", noremap = true })
keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move selected lines up or down", noremap = true })
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up or down", noremap = true })
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selected lines up or down", noremap = true })

-- indentation remapped
keymap.set("n", "<Tab>", ">>", { desc = "Move selected line to right", noremap = true })
keymap.set("n", "<S-Tab>", "<<", { desc = "Move selected line to left", noremap = true })
keymap.set("v", "<Tab>", ">gv", { desc = "Move selected line to right", noremap = true })
keymap.set("v", "<S-Tab>", "<gv", { desc = "Move selected line to left", noremap = true })
