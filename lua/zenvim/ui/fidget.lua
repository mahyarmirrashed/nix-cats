require("lze").load({
  "fidget.nvim",
  event = "DeferredUIEnter",
  after = function(_) require("fidget").setup() end,
})
