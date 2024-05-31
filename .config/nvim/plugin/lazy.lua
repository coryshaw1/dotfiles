-- reload config on save
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "**/lua/custom/**/*.lua",
  callback = function()
    local filepath = vim.fn.expand "%"

    dofile(filepath)
    vim.notify("Configuration reloaded \n" .. filepath, nil)
  end,
  desc = "Reload config on save",
})
