-- `:LspInfo` (alias to `:checkhealth vim.lsp`) shows the status of active and
-- configured language servers.

-- lsp (look it up on the mason registry:
-- https://mason-registry.dev/registry/list?search=language%3A%22json%22+category%3Alsp)
-- [X] LaTeX: ltex-ls-plus (if I think I need spellcheck) or texlab, maybe with vimtex unless I can find/make something that can use xelatex/lualatex (stuff for fontspec), OR I can make my own plugin that compiles whenever I write a file that is called by the main tex file
-- [X] Javascript/Typescript: vscode-eslint-language-server
-- [X] HTML: vscode-html-language-server
-- [X] CSS: vscode-css-language-server
-- [X] json: vscode-json-language-server
-- [X] Python: pyright
-- [X] C/C++: clangd
-- [-] JSX (And all front-end, maybe): ast-grep (but it's written in Rust, and it
--     doesn't really have lsp features I want, like go to definition)

vim.diagnostic.config({ virtual_text = false }) -- diagnostics at end of line
vim.pack.add {
  { src = GH "neovim/nvim-lspconfig" },
  { src = GH "folke/lazydev.nvim" }, -- just for vim globals in config
  -- { src = GH "barreiroleo/ltex-extra.nvim" },
}

require("lazydev").setup() -- allows language server to read vim globals
-- require("ltex_extra").setup() -- problems with reaching ltex client?

-- no vim.lsp.config because I don't really care

vim.lsp.enable {
  "lua_ls",
  "texlab",
  "ltex-ls", -- LaTeX spell check
  "vscode-eslint-language-server", -- no idea where the vscode exes live
  "vscode-html-language-server",
  "vscode-css-language-server",
  "vscode-json-language-server",
  "pyright",
  "clangd-19",
}

