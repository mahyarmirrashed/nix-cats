require("lze").load({
  "gitsigns.nvim",
  lazy = false,
  after = function(_)
    require("gitsigns").setup({
      signs = {
        add = { text = "▌" },
        change = { text = "▌" },
        delete = { text = "▌" },
        topdelete = { text = "▌" },
        changedelete = { text = "▌" },
        untracked = { text = "▌" },
      },
      signs_staged = {
        add = { text = "▌" },
        change = { text = "▌" },
        delete = { text = "▌" },
        topdelete = { text = "▌" },
        changedelete = { text = "▌" },
        untracked = { text = "▌" },
      },
    })
  end,
})
