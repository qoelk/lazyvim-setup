return {
  {
    "theHamsta/nvim-dap-virtual-text",
    enabled = false,
  },
  {
    "rcarriga/nvim-dap-ui",
    enabled = false,
  },
  {
    "igorlfs/nvim-dap-view",
    event = "VeryLazy",
    opts = {
      inline = false,
    },
    keys = {
      {
        "<leader>du",
        function()
          require("dap-view").toggle()
        end,
        desc = "Toggle DapView",
      },
    },
  },
}