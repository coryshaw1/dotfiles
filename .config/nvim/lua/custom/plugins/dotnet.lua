return {
  {
    "GustavEikaas/easy-dotnet.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
      "theHamsta/nvim-dap-virtual-text",
    },
    config = function()
      local dap = require "dap"

      require("easy-dotnet").setup {
        netcoredbg = {
          path = vim.fn.expand "~/.local/share/nvim/mason/packages/netcoredbg/netcoredbg",
        },
        lsp = {
          enabled = true,
          set_fold_expr = false,
        },
      }

      -- Route program output to dap-ui console instead of an external terminal
      dap.listeners.before.launch.easy_dotnet_console = function(_, config)
        config.console = "internalConsole"
      end
    end,
  },
}
