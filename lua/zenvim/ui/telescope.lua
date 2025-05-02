local function tf(cmd, opts)
  return function() return require("telescope.builtin")[cmd](opts or {}) end
end

require("lze").load({
  "telescope.nvim",
  dependencies = { "plenary.nvim" },
  keys = {
    -- Essential
    { "<leader><space>", tf("find_files"), desc = "Search Files" },
    { "<leader>,", tf("buffers"), desc = "Search Buffers" },
    { "<leader>/", tf("live_grep"), desc = "Live Grep" },
    { "<leader>:", tf("command_history"), desc = "Search Command History" },
    -- Find
    { "<leader>fb", tf("buffers"), desc = "Search Buffers" },
    { "<leader>ff", tf("find_files"), desc = "Search Files" },
    { "<leader>fg", tf("git_files"), desc = "Search Git Files" },
    { "<leader>fr", tf("oldfiles"), desc = "Search Recent Files" },
    { "<leader>fw", tf("current_buffer_fuzzy_find"), desc = "Search Buffer Lines" },
    { "<leader>f.", tf("grep_string"), desc = "Search Words", mode = { "n", "x" } },
    -- Git
    { "<leader>gb", tf("git_branches"), desc = "Search Git Branches" },
    { "<leader>gs", tf("git_status"), desc = "Search Git Status" },
    { "<leader>gS", tf("git_stash"), desc = "Search Git Stash" },
    { "<leader>gl", tf("git_commits"), desc = "Search Git Commits" },
    { "<leader>gf", tf("git_bcommits"), desc = "Search Git Buffer Commits" },
    -- Grep
    { "<leader>sg", tf("live_grep"), desc = "Live Grep" },
    { "<leader>sb", tf("current_buffer_fuzzy_find"), desc = "Grep Buffer Lines" },
    -- Search
    { '<leader>s"', tf("registers"), desc = "Search Registers" },
    { "<leader>s/", tf("search_history"), desc = "Search History" },
    { "<leader>sa", tf("autocommands"), desc = "Search Autocommands" },
    { "<leader>sc", tf("commands"), desc = "Search Commands" },
    { "<leader>sC", tf("command_history"), desc = "Search Command History" },
    { "<leader>sd", tf("diagnostics"), desc = "Search Diagnostics (All)" },
    { "<leader>sD", tf("diagnostics", { bufnr = 0 }), desc = "Search Diagnostics (Buffer)" },
    { "<leader>sh", tf("help_tags"), desc = "Search Help Pages" },
    { "<leader>sH", tf("highlights"), desc = "Search Highlight Groups" },
    { "<leader>sj", tf("jumplist"), desc = "Search Jump List" },
    { "<leader>sk", tf("keymaps"), desc = "Search Key Mappings" },
    { "<leader>sl", tf("loclist"), desc = "Search Location List" },
    { "<leader>sm", tf("marks"), desc = "Search Marks" },
    { "<leader>sM", tf("man_pages"), desc = "Search Man Pages" },
    { "<leader>sq", tf("quickfix"), desc = "Search Quickfix List" },
    { "<leader>sR", tf("resume"), desc = "Resume Last Search" },
    { "<leader>uC", tf("colorscheme"), desc = "Search Colorschemes" },
    -- LSP
    { "gd", tf("lsp_definitions"), desc = "Go to Definition" },
    { "gD", tf("lsp_declarations"), desc = "Go to Declaration" },
    { "gr", tf("lsp_references"), nowait = true, desc = "Search References" },
    { "gI", tf("lsp_implementations"), desc = "Go to Implementation" },
    { "gy", tf("lsp_type_definitions"), desc = "Go to Type Definition" },
  },
  after = function(_) require("telescope").setup() end,
})
