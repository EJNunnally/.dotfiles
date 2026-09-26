-- print("colorscheme.lua") -- debug
-- see if I can add per-language colorschemes, like gruvbox for LaTeX
-- https://github.com/topics/neovim-colorscheme
vim.pack.add {
  -- { src = GH 'shaunsingh/nord.nvim' }, -- Chris Titus's preferred theme
  -- { src = GH 'ellisonleao/gruvbox.nvim' },
  -- { src = GH 'folke/tokyonight.nvim' }, -- kickstart default
  -- { src = GH 'rebelot/kanagawa.nvim' },
  { src = GH 'vague-theme/vague.nvim' }, -- Sylvan Franklin (Vimothee) uses this
}

local mycolors = 'vague' -- main color scheme

-- {{{ Colorscheme Options
-- nord
--[[
vim.g.nord_italic = false -- I don't really like italics
require('nord').set()
--]]

-- gruvbox
--[[
require("gruvbox").setup({
  terminal_colors = true, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = false,
    emphasis = true,
    comments = false,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})
--]]

-- vague
require('vague').setup({
  transparent = false, -- If true, background is not set
  bold = true, -- Disable bold globally
  italic = false, -- Disable italic globally
  on_highlights = function(hl, colors) end,
  colors = {
    bg = '#141415',
    inactiveBg = '#1c1c24',
    fg = '#cdcdcd',
    floatBorder = '#878787',
    line = '#252530',
    comment = '#606079',
    builtin = '#b4d4cf',
    func = '#c48282',
    string = '#e8b589',
    number = '#e0a363',
    property = '#c3c3d5',
    constant = '#aeaed1',
    parameter = '#bb9dbd',
    visual = '#333738',
    error = '#d8647e',
    warning = '#f3be7c',
    hint = '#7e98e8',
    operator = '#90a0b5',
    keyword = '#6e94b2',
    type = '#9bb4bc',
    search = '#405065',
    plus = '#7fa563',
    delta = '#f3be7c',
  },
})

-- }}}

vim.cmd('colorscheme ' .. mycolors)

