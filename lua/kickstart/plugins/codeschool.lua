return {
  {
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'adisen99/codeschool.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    dependencies = { 'rktjmp/lush.nvim' },
    config = function()
      require('lush')(require('codeschool').setup({
        plugins = {
          "buftabline",
          "coc",
          "cmp", -- nvim-cmp
          "fzf",
          "gitgutter",
          "gitsigns",
          "lsp",
          "lspsaga",
          "nerdtree",
          "netrw",
          "nvimtree",
          "neogit",
          "packer",
          "signify",
          "startify",
          "syntastic",
          "telescope",
          "treesitter"
        },
        langs = {
          "c",
          "clojure",
          "coffeescript",
          "csharp",
          "css",
          "elixir",
          "golang",
          "haskell",
          "html",
          "java",
          "js",
          "json",
          "jsx",
          "lua",
          "markdown",
          "moonscript",
          "objc",
          "ocaml",
          "purescript",
          "python",
          "ruby",
          "rust",
          "scala",
          "typescript",
          "viml",
          "xml"
        }
      }))
    end,
    init = function()
      -- Load the colorscheme here.
      vim.cmd.colorscheme 'codeschool'
      vim.g.codeschool_contrast_dark = "hard"
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
