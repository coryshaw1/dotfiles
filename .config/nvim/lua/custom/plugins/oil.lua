function Set(list)
  local set = {}
  for _, l in ipairs(list) do
    set[l] = true
  end
  return set
end

return {
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup {
        default_file_explorer = false,
        columns = { "icon" },
        keymaps = {
          ["<C-l>"] = "actions.preview",
          ["<C-p>"] = false,
        },
        view_options = {
          show_hidden = true,
          is_always_hidden = function(name)
            local files = Set { ".DS_Store" }

            if files[name] then
              return true
            end

            return false
          end,
        },
      }

      -- Open parent directory in current window
      vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
      -- Open parent directory in floating window
      vim.keymap.set("n", "<space>-", require("oil").toggle_float)
    end,
  },
}
