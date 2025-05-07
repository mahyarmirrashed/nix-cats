require("lze").load({
  "lualine.nvim",
  event = "DeferredUIEnter",
  after = function(_)
    require("lualine").setup({
      options = {
        theme = "gruvbox_dark",
      },
    })
  end,
})
