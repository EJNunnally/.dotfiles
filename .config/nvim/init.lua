-- Quick Reference option list
-- https://neovim.io/doc/user/quickref/#option-list
-- `:restart` or `:so` in file to hot-reload

-- Remember to start with the bare necessities, then add plugins and features as I go
-- Checklist
-- [X] options
-- [X] keybindings
-- [X] treesitter
-- [X] colorscheme
-- [X] lsp
--     [ ] figure out how to make diagnostics easy to read
-- [X] per-language configuration (e.g., ./after/ftplugin/lua.lua is loaded for lua)
--     [ ] I want a way to put filetype in the status line without plugins
-- [ ] way to remind myself my custom keybindings (leader h? like awesomewm's help menu)

-- require("erik")
-- welcome message?
-- print("hello from mynvimconfig") -- debug

-- {{{ Global stuff
function GH(repo) return 'https://github.com/' .. repo end -- for plugins & colors
-- }}}

require("options") -- editor settings
require("colors") -- colorscheme
require("bindings") -- key remaps
require("plugins") -- trying out the new vim.pack plugin manager

-- API: more editor settings
vim.api.nvim_set_hl(0, "Normal", { bg = "none" }) -- remove background
vim.api.nvim_create_autocmd('TextYankPost', { -- highlight yank from kickstart
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank() -- highlight is deprecated, apparently
  end,
})

