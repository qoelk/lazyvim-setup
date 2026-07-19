return {
  {
    'nvim-mini/mini.pairs',
    event = 'VeryLazy',
    opts = {
      modes = { insert = true, command = true, terminal = false },
      skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
      skip_ts = { 'string' },
      skip_unbalanced = true,
      markdown = true,
    },
  },
  {
    'nvim-mini/mini.files',
    version = '*',
    opts = {
      windows = {
        preview = true,
        width_focus = 30,
        width_preview = 30,
      },
    },
    keys = {
      {
        '<leader>e',
        function()
          require('mini.files').open(vim.uv.cwd(), true)
        end,
        desc = 'Open mini.files (cwd)',
      },
    },
  },
}