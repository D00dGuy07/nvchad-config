return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    'bkoropoff/clipipe',
    opts = {
      -- Optional configuration, defaults shown here:
      path = nil, -- clipipe binary
      keep_line_endings = false, -- Set to true to disable \r\n conversion on Windows
      enable = false, -- Automatically set g:clipboard to enable clipipe
      start_timeout = 5000, -- Timeout for starting background process (ms)
      timeout = 500, -- Timeout for responses from background process (ms)
      interval = 50, -- Polling interval for responses (ms)
      download = true, -- Download pre-built binary if needed
      build = false, -- Build from source if needed
    },
  },
  {
    "nosduco/remote-sshfs.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    opts = {},
  },
  {
      "mason-org/mason-lspconfig.nvim",
      opts = {},
      dependencies = {
          { "mason-org/mason.nvim", opts = {} },
          "neovim/nvim-lspconfig",
      },
  },
}
