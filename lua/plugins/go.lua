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
              buildFlags = { "-tags=integration,unit" },
              usePlaceholders = false,
            },
          },
        },
      },
    },
  },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      {
        "mason-org/mason.nvim",
        opts = { ensure_installed = { "delve" } },
      },
    },
    config = function()
      local dap = require("dap")

      dap.adapters.go = function(callback, config)
        local port = config.port or "2345"
        local host = config.host or "127.0.0.1"

        callback({
          type = "server",
          port = port,
          executable = {
            command = "dlv",
            args = { "dap", "-l", host .. ":" .. port },
          },
        })
      end

      dap.configurations.go = {
        {
          type = "go",
          ft = { "go" },
          name = "Debug service in place",
          request = "launch",
          mode = "debug",
          program = "${file}",
          args = { "--local-config-enabled", "--bind-localhost" },
        },
        {
          type = "go",
          name = "Debug test",
          request = "launch",
          mode = "test",
          program = "${file}",
          port = 2346,
        },
        {
          type = "go",
          name = "Debug running service",
          request = "attach",
          mode = "remote",
          port = function()
            return tonumber(vim.fn.input("Port: ", "2345"))
          end,
          host = function()
            return vim.fn.input("Host: ", "127.0.0.1")
          end,
        },
      }
    end,
  },
}