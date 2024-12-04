return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "python",
        "c", "cpp", "svelte",
        "typescript", "markdown",
        "markdown_inline", "make",
        "dockerfile"
  		},
  	},
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "clang-format",
        "stylua",
        "typescript-language-server",
        "tailwindcss-language-server",
        "clangd",
        "html-lsp",
        "eslint-lsp",
        "css-lsp",
        "prettier",
        "cmake-language-server",
        "svelte-language-server",
        "python-lsp-server",
      }
    },
  },
}
