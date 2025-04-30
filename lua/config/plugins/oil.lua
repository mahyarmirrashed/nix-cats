-------------------------------------------------------------------------------
-- Configuration for oil.nvim
-------------------------------------------------------------------------------

return {
  "stevearc/oil.nvim",
  keys = {
    { "<leader>e", "<cmd>Oil<CR>", desc = "Toggle Oil file explorer" },
  },
  opts = {
    -- Replace `netrw` as default file explorer
    default_file_explorer = true,
    -- Columns to show for files
    columns = {
      "icon",
      "size",
    },
    view_options = {
      -- Show files and directories that start with "."
      show_hidden = true,
    },
  },
  config = function(_, opts)
    require("oil").setup(opts)
  end,
}

