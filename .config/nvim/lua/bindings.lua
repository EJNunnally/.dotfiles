-- print("bindings.lua") -- debug
-- vim.g.mapleader = " " -- I like backslash because I'm a LaTeX user
-- Should I try doing the same thing I did in my SomeWM config? nah, all maps
-- are one line each
-- <cmd> doesn't print the command on the command line
-- could also use `{ silent = true }` option after the command, but I like
-- having less to read with <cmd>; look at the Explore example
-- vim.keymap.set("n", "<leader>e", ":Explore<CR>", { silent = true })

-- Leader bindings
vim.keymap.set("n", "<leader>e", "<cmd>Explore<CR>")
vim.keymap.set("n", "<leader>t", "<cmd>Tex<CR>")
vim.keymap.set("n", "<leader>r", "<cmd>restart<CR>")

-- {{{ Other bindings
-- commands
vim.keymap.set("n", "<C-S-PageDown>", "<cmd>tabmove +1<CR>")
vim.keymap.set("n", "<C-S-PageUp>", "<cmd>tabmove -1<CR>")
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
-- move lines with familiar Alt/Meta key shortcut, needed : instead of<cmd>
vim.keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<M-k>", ":m '<-2<CR>gv=gv")

-- movements
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- centers cursor after move down
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- centers cursor after move up

-- Really, <C-c> and <Esc> should be the same thing
vim.keymap.set("i", "<C-c>", "<Esc>")
-- }}}

