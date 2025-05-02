require("lze").load({
  "snacks.nvim",
  keys = {
    { "<leader>gg", function() Snacks.lazygit() end, desc = "LazyGit" },
  },
  after = function(_) require("snacks").setup() end,
})
