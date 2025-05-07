-- Buffer navigation
vim.keymap.set("n", "<tab>", "<cmd>bn<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<s-tab>", "<cmd>bp<cr>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>bd", "<cmd>bd!<cr>", { desc = "Close Buffer", noremap = true, silent = true })
vim.keymap.set("n", "<leader>c", "<cmd>bd!<cr>", { desc = "Close Buffer", noremap = true, silent = true })

-- Indentation
vim.keymap.set("n", "<", "<s-v><", { desc = "Decrement line indentation" })
vim.keymap.set("n", ">", "<s-v>>", { desc = "Increment line indentation" })
vim.keymap.set("v", "<", "<gv", { desc = "Decrement selection indentation" })
vim.keymap.set("v", ">", ">gv", { desc = "Increment selection indentation" })

-- Pane navigation
vim.keymap.set("n", "<c-l>", "<c-w>l", { desc = "Go to right pane" })
vim.keymap.set("n", "<c-k>", "<c-w>k", { desc = "Go to upper pane" })
vim.keymap.set("n", "<c-j>", "<c-w>j", { desc = "Go to lower pane" })
vim.keymap.set("n", "<c-h>", "<c-w>h", { desc = "Go to left pane" })
vim.keymap.set("t", "<c-l>", [[<c-\><c-n><c-w>l]], { desc = "Go to right pane" })
vim.keymap.set("t", "<c-k>", [[<c-\><c-n><c-w>k]], { desc = "Go to upper pane" })
vim.keymap.set("t", "<c-j>", [[<c-\><c-n><c-w>j]], { desc = "Go to lower pane" })
vim.keymap.set("t", "<c-h>", [[<c-\><c-n><c-w>h]], { desc = "Go to left pane" })

-- Miscellaneous
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Save File" })
vim.keymap.set("n", "<leader>q", "<cmd>qa<cr>", { desc = "Quit" })
vim.keymap.set("n", "<leader>Q", "<cmd>q<cr>", { desc = "Quit" })
vim.keymap.set("n", "zz", "<cmd>q<cr>", { desc = "Quit" })
