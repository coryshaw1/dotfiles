return {
  "kylechui/nvim-surround",
  event = "InsertEnter",
  version = "*",
  lazy = true,
  opts = {
    keymaps = {
      insert = "<C-g>s",
      insert_line = "<C-g>S",
      normal = "ys",
      normal_cur = "yss",
      normal_line = "yS",
      normal_cur_line = "ySS",
      visual = "S",
      visual_line = "gS",
      delete = "ds",
      change = "cs",
    },
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
