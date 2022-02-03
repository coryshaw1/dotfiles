lua << EOF
local action_state = require("telescope.actions.state")
require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key",
        ["<c-a>"] = function() print(vim.inspect(action_state.get_selected_entry())) end
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
require("telescope").load_extension("fzf")

require('neoclip').setup()
require("telescope").load_extension("neoclip")
EOF

" Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd> lua require('telescope.builtin').find_files()<cr>
nnoremap <C-P>      <cmd> lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd> lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd> lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd> lua require('telescope.builtin').help_tags()<cr>
nnoremap <C-M>      <cmd> lua require('telescope').extensions.neoclip.default()<cr>
