return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    opts = {
      panel = {
        enabled = true,
        layout = {
          position = "right",
          ratio = 0.4,
        },
      },
      suggestion = {
        enabled = true,
      },
      copilot_node_command = vim.fn.expand "$HOME" .. "/.nvm/versions/node/v20.18.1/bin/node",
    },
  },
  {
    "yetone/avante.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "zbirenbaum/copilot.lua",
    },
    build = "make",
    opts = { provider = "copilot" },
  },
}
