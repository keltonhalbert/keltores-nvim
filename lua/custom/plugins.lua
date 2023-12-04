local plugins = {
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require("custom.configs.null-ls")
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
  },
  {
    'windwp/nvim-ts-autotag',
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function ()
      require('nvim-ts-autotag').setup({
      })
    end,
    lazy = true,
    event = "VeryLazy"
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        'clangd',
        'eslint-lsp',
        'clang-format',
        'typescript-language-server',
        'svelte-language-server',
      }
    }
  }

}
return plugins
