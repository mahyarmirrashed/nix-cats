require("lze").load({
  "auto-session",
  lazy = false,
  keys = {
    { "<leader>sd", "<cmd>SessionDelete<cr>", desc = "Delete Session" },
    { "<leader>sf", "<cmd>SessionSearch<cr>", desc = "Search Session" },
    { "<leader>sl", "<cmd>SessionRestore<cr>", desc = "Restore Session" },
    { "<leader>sr", "<cmd>SessionRestore<cr>", desc = "Restore Session" },
    { "<leader>ss", "<cmd>SessionSave<cr>", desc = "Save Session" },
    { "<leader>st", "<cmd>SessionToggleAutoSave<cr>", desc = "Toggle Session Autosave" },
    { "<leader>s<bs>", "<cmd>SessionPurgeOrphaned<cr>", desc = "Clean Orphaned Sessions" },
  },
  after = function(_)
    require("auto-session").setup({
      bypass_save_filetypes = { "alpha", "help", "nofile", "oil", "telescope", "trouble" },
      lazy_support = false,
      suppressed_dirs = { "~/Downloads" },
    })

    -- Behaviour is explained here: https://github.com/rmagatti/auto-session#-behaviour
    vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
  end,
})
