-- print("options.lua") -- debug
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "80" -- highlights col 80, visual check on line width
-- vim.opt.columns = 80 -- changes window width, but I don't really like it
vim.opt.termguicolors = true -- "good colors"
vim.opt.guicursor = "" -- disables cursor styling
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true -- converts tab characters to spaces, as God intended
vim.opt.undofile = true -- can still undo in new sessions
vim.opt.autoread = true -- can see changes if made outside nvim
vim.opt.wrap = false -- try this out for now
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
-- vim.opt.cursorline = true -- Highlights current line, not sure I like that
vim.opt.winborder = "bold"

