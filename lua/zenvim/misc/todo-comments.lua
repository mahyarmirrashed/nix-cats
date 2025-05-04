require("lze").load({
  "todo-comments.nvim",
  event = "DeferredUIEnter",
  keys = {
    { "]t", function() require("todo-comments").jump_next() end, { desc = "Next Todo Comment" } },
    { "[t", function() require("todo-comments").jump_prev() end, { desc = "Previous Todo Comment" } },
    { "<leader>tt", "<cmd>TodoTelescope<cr>", { desc = "View Todo Comments in Telescope" } },
  },
  after = function(_) require("todo-comments").setup() end,
})
