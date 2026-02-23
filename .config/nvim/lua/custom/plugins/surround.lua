return {
  "kylechui/nvim-surround",
  event = "VeryLazy",
  opts = {
    aliases = {
      ["a"] = "<",
      ["b"] = "(",
      ["B"] = "{",
      ["r"] = "[",
      ["q"] = { '"', "'", "`" },
      ["s"] = { "{", "[", "(", "<", '"', "'", "`" },
    },
    highlight = {
      duration = 500,
    },
  },
}
