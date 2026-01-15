return {
  "olimorris/persisted.nvim",
  event = "BufReadPre",
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
