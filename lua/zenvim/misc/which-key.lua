require("lze").load({
  "which-key.nvim",
  dependencies = { "mini.icons" },
  event = "VimEnter",
  keys = {
    {
      "<leader>?",
      function() require("which-key").show({ global = false }) end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
  after = function(_) require("which-key").setup({ icons = { mappings = false } }) end,
})
