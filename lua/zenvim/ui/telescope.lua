require("lze").load({
  "telescope.nvim",
  dependencies = { "plenary.nvim" },
  -- stylua: ignore start
  keys = {
    -- Find
    { "<leader>ff", function() require("telescope.builtin").find_files() end, desc = "Find Files" },
    { "<leader>fg", function() require("telescope.builtin").git_files() end, desc = "Find Git Files" },
    -- Search
    { '<leader>s"', function() require("telescope.builtin").registers() end, desc = "Search Buffers" },
    { "<leader>sb", function() require("telescope.builtin").buffers() end, desc = "Search Buffers" },
    { "<leader>sc", function() require("telescope.builtin").commands() end, desc = "Search Commands" },
    { "<leader>sC", function() require("telescope.builtin").command_history() end, desc = "Search Command History" },
    { "<leader>uC", function() require("telescope.builtin").colorscheme() end, desc = "Search Colorschemes" },
  },
  -- stylua: ignore end
  after = function(_) require("telescope").setup() end,
})
