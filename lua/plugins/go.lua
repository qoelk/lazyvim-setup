return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        proto = {},
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              usePlaceholders = false,
            },
          },
        },
      },
    },
  },
  {
    "nvim-neotest/neotest",
    commit = "52fca671",
  },
}
