return {
  "olimorris/persisted.nvim",
  lazy = false, -- make sure the plugin is always loaded at startup
  config = true,
  opts = {
    should_save = function()
      -- Do not save if the snacks dashboard is the current filetype
      if vim.bo.filetype == "snacks_dashboard" then
        return false
      end
      return true
    end,
  },
}
