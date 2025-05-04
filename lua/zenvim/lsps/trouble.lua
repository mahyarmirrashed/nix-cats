require("lze").load({
  "trouble.nvim",
  event = "BufReadPost",
  cmd = "Trouble",
  keys = {
    {
      "<leader>xx",
      function() require("trouble").toggle({ mode = "diagnostics" }) end,
      desc = "Diagnostics (Trouble)",
    },
    {
      "<leader>xX",
      function() require("trouble").toggle({ mode = "diagnostics", filter = { buf = 0 } }) end,
      desc = "Buffer Diagnostics (Trouble)",
    },
  },
  after = function(_) require("trouble").setup() end,
})
