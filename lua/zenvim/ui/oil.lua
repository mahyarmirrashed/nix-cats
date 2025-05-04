require("lze").load({
  "oil.nvim",
  lazy = false,
  keys = {
    { "<leader>e", "<cmd>Oil<cr>", desc = "Toggle Oil file explorer" },
  },
  after = function(_)
    require("oil").setup({
      -- Replace `netrw` as default file explorer
      default_file_explorer = true,
      -- Keymaps in oil buffer
      keymaps = {
        ["h"] = { "actions.parent", mode = "n" },
        ["l"] = { "actions.select", mode = "n" },
      },
      -- Columns to show for files
      columns = {
        "icon",
        "permissions",
        "size",
      },
      view_options = {
        -- Show files and directories that start with "."
        show_hidden = true,
      },
    })
  end,
})
