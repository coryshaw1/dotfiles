return {
  "YannickFricke/codestats.nvim",
  config = function()
    require("codestats-nvim").setup {
      token = "SFMyNTY.YldKemRYSm1aWEk9IyNNVFF4TkE9PQ.KbPfd0e6yhR-pVICb3Oi6brLGV-Howy6osd0W-f7XZk",
    }
  end,
  dependencies = { "nvim-lua/plenary.nvim" },
}
