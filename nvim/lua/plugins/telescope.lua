local actions = require('telescope.actions')

require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    mappings = {
      i = {
        ["<C-j>"] = "move_selection_next",
        ["<C-k>"] = "move_selection_previous",
        ["<leader>"] = actions.select_default,
      },
      n = {
        ["q"] = actions.close,
        ["<leader>"] = actions.select_default,
      }
    }
  },
  pickers = {
    buffers = {
      initial_mode = "normal"
    }
  }
}


