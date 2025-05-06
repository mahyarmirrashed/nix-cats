require("lze").load({
  {
    "nvim-treesitter",
    dep_of = "treesj",
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
  {
    "treesj",
    event = "DeferredUIEnter",
    keys = {
      { "<leader>m", function() require("treesj").toggle() end, "Toggle Splitjoin" },
    },
    after = function(_)
      require("treesj").setup({
        use_default_keymaps = false,
      })
    end,
  },
})
