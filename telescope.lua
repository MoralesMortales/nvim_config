
-- Import necessary modules
local fb_actions = require("telescope").extensions.file_browser.actions
local nvim_tree_api = require("nvim-tree.api")
local actions = require("telescope.actions")


-- Create a global variable to store the selected directory from Telescope
_G.last_selected_dir = vim.fn.getcwd()  -- Initialize with the current working directory
_G.term_current_dir = vim.fn.getcwd()   -- Initialize with the same directory

-- Update the variable when you select a directory in Telescope
require('telescope').setup{
  extensions = {
    file_browser = {
      mappings = {
        ["i"] = {
          ["<CR>"] = function(prompt_bufnr)
            local selection = require("telescope.actions.state").get_selected_entry()
            local dir = selection.path
            if dir and vim.fn.isdirectory(dir) == 1 then
              nvim_tree_api.tree.change_root(dir)  -- Update NvimTree root
              _G.last_selected_dir = dir  -- Store the selected directory globally
              vim.cmd("cd " .. dir)  -- Update the global working directory
              print("Changing to directory: " .. dir)
            end
            actions.close(prompt_bufnr)
          end,
        },
        ["n"] = {
          ["<CR>"] = function(prompt_bufnr)
            local selection = require("telescope.actions.state").get_selected_entry()
            local dir = selection.path
            if dir and vim.fn.isdirectory(dir) == 1 then
              nvim_tree_api.tree.change_root(dir)
              _G.last_selected_dir = dir  -- Store the selected directory globally
              vim.cmd("cd " .. dir)
              print("Changing to directory: " .. dir)
            end
            actions.close(prompt_bufnr)
          end,
        },
      },
    },
  },
}

-- Load the file_browser extension for Telescope
require("telescope").load_extension("file_browser")

-- Configure ToggleTerm to use the last selected directory with a conditional check
require("toggleterm").setup{
  open_mapping = [[<c-t>]],
  direction = 'horizontal',
  on_open = function(term)
    local dir = _G.last_selected_dir  -- Use the globally stored directory
    
    -- Only update if the terminal is not already in the correct directory
    if dir ~= _G.term_current_dir then
      print("Terminal will open in directory: " .. dir)
      vim.api.nvim_chan_send(term.job_id, "cd " .. dir .. "\n")  -- Send the cd command to the terminal
      _G.term_current_dir = dir  -- Update the current terminal directory
    else
      print("Terminal is already in the correct directory: " .. _G.term_current_dir)
    end
  end,
}

