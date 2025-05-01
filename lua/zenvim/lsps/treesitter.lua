require("lze").load({
  {
    "nvim-treesitter",
    event = "DeferredUIEnter",
    after = function(_)
      require("nvim-treesitter.configs").setup({
        highlight = { enable = true },
        indent = { enable = false },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<c-space>",
            node_incremental = "<c-space>",
            scope_incremental = false,
            node_decremental = "<bs>",
          },
        },
      })
    end,
  },
})
