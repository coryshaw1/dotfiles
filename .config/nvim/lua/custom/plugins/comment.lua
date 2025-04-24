return {
  {
    "numToStr/Comment.nvim",
    lazy = false,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      keywords = {
        NOTE = { icon = " ", color = "hint", alt = { "INFO", "DEBUG" } },
      },
    },
  },
}
