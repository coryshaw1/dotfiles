return {
  {
    "saghen/blink.cmp",
    lazy = false,
    version = "1.*",
    dependencies = {
      { "L3MON4D3/LuaSnip", build = "make install_jsregexp" },
      "giuxtaposition/blink-cmp-copilot",
      { "xzbdmw/colorful-menu.nvim", opts = {} },
      "onsails/lspkind.nvim",
    },
    config = function()
      require "custom.blink"
    end,
  },
  -- blink.compat lets blink use nvim-cmp sources (dadbod, easy-dotnet fallback)
  {
    "saghen/blink.compat",
    version = "2.*",
    lazy = true,
    opts = {},
  },
}
