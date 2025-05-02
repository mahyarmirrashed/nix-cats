require("lze").load({
  "telescope.nvim",
  dependencies = { "plenary.nvim" },
  -- stylua: ignore start
  keys = {
    -- Essential
    { "<leader><space>", function() require("telescope.builtin").find_files() end, desc = "Search Files" },
    { "<leader>,", function() require("telescope.builtin").buffers() end, desc = "Search Buffers" },
    { "<leader>/", function() require("telescope.builtin").live_grep() end, desc = "Live Grep" },
    { "<leader>:", function() require("telescope.builtin").command_history() end, desc = "Search Command History" },
    -- Find
    { "<leader>fb", function() require("telescope.builtin").buffers() end, desc = "Search Buffers" },
    { "<leader>ff", function() require("telescope.builtin").find_files() end, desc = "Search Files" },
    { "<leader>fg", function() require("telescope.builtin").git_files() end, desc = "Search Git Files" },
    { "<leader>fr", function() require("telescope.builtin").oldfiles() end, desc = "Search Recent Files" },
    -- Git
    { "<leader>gb", function() require("telescope.builtin").git_branches() end, desc = "Search Git Branches" },
    { "<leader>gs", function() require("telescope.builtin").git_status() end, desc = "Search Git Status" },
    { "<leader>gS", function() require("telescope.builtin").git_stash() end, desc = "Search Git Stash" },
    { "<leader>gl", function() require("telescope.builtin").git_commits() end, desc = "Search Git Commits" },
    { "<leader>gf", function() require("telescope.builtin").git_bcommits() end, desc = "Search Git Buffer Commits" },
    -- Grep
    { "<leader>sg", function() require("telescope.builtin").live_grep() end, desc = "Live Grep" },
    { "<leader>sw", function() require("telescope.builtin").grep_string() end, desc = "Grep Word/Selection", mode = { "n", "x" } },
    { "<leader>sb", function() require("telescope.builtin").current_buffer_fuzzy_find() end, desc = "Grep Buffer Lines" },
    -- Search
    { '<leader>s"', function() require("telescope.builtin").registers() end, desc = "Search Registers" },
    { "<leader>s/", function() require("telescope.builtin").search_history() end, desc = "Search History" },
    { "<leader>sa", function() require("telescope.builtin").autocommands() end, desc = "Search Autocommands" },
    { "<leader>sc", function() require("telescope.builtin").commands() end, desc = "Search Commands" },
    { "<leader>sC", function() require("telescope.builtin").command_history() end, desc = "Search Command History" },
    { "<leader>sd", function() require("telescope.builtin").diagnostics() end, desc = "Search Diagnostics (All)" },
    { "<leader>sD", function() require("telescope.builtin").diagnostics({ bufnr = 0 }) end, desc = "Search Diagnostics (Buffer)" },
    { "<leader>sh", function() require("telescope.builtin").help_tags() end, desc = "Search Help Pages" },
    { "<leader>sH", function() require("telescope.builtin").highlights() end, desc = "Search Highlight Groups" },
    { "<leader>sj", function() require("telescope.builtin").jumplist() end, desc = "Search Jump List" },
    { "<leader>sk", function() require("telescope.builtin").keymaps() end, desc = "Search Key Mappings" },
    { "<leader>sl", function() require("telescope.builtin").loclist() end, desc = "Search Location List" },
    { "<leader>sm", function() require("telescope.builtin").marks() end, desc = "Search Marks" },
    { "<leader>sM", function() require("telescope.builtin").man_pages() end, desc = "Search Man Pages" },
    { "<leader>sq", function() require("telescope.builtin").quickfix() end, desc = "Search Quickfix List" },
    { "<leader>sR", function() require("telescope.builtin").resume() end, desc = "Resume Last Search" },
    { "<leader>uC", function() require("telescope.builtin").colorscheme() end, desc = "Search Colorschemes" },
    -- LSP
    { "gd", function() require("telescope.builtin").lsp_definitions() end, desc = "Go to Definition" },
    { "gD", function() require("telescope.builtin").lsp_declarations() end, desc = "Go to Declaration" },
    { "gr", function() require("telescope.builtin").lsp_references() end, nowait = true, desc = "Search References" },
    { "gI", function() require("telescope.builtin").lsp_implementations() end, desc = "Go to Implementation" },
    { "gy", function() require("telescope.builtin").lsp_type_definitions() end, desc = "Go to Type Definition" },
  },
  -- stylua: ignore end
  after = function(_) require("telescope").setup() end,
})
