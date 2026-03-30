return {
  "YannickFricke/codestats.nvim",
  config = function()
    local token = vim.env.CODESTATS_API_KEY
    if not token or token == "" then
      return
    end
    require("codestats-nvim").setup { token = token }
  end,
  dependencies = { "nvim-lua/plenary.nvim" },
}
