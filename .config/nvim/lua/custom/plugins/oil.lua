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
      local oil = require "oil"
      oil.setup {
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
      vim.keymap.set("n", "-", function()
        oil.open()

        -- Wait until oil has opened, for a maximum of 1 second.
        vim.wait(1000, function()
          return oil.get_cursor_entry() ~= nil
        end)
        if oil.get_cursor_entry() then
          oil.open_preview()
        end
      end, { desc = "Open parent directory" })

      -- Open parent directory in floating window
      vim.keymap.set("n", "<space>-", function()
        oil.toggle_float()

        -- Wait until oil has opened, for a maximum of 1 second.
        vim.wait(1000, function()
          return oil.get_cursor_entry() ~= nil
        end)
        if oil.get_cursor_entry() then
          oil.open_preview()
        end
      end)
    end,
  },
}
