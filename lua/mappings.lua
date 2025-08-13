require "nvchad.mappings"

-- General key mappings
local map = vim.keymap.set

-- Window management
map("n", "<leader>l", "<cmd> :wincmd l<CR>", { desc = "change window right" })
map("n", "<leader>h", "<cmd> :wincmd h<CR>", { desc = "change window left" })
map("n", "<leader>j", "<cmd> :wincmd j<CR>", { desc = "change window down" })
map("n", "<leader>k", "<cmd> :wincmd k<CR>", { desc = "change window up" })
map("n", "<leader>v", "<cmd> :vsplit <CR>", { desc = "create vertical split" })
map("n", "<leader>b", "<cmd> :split <CR>", { desc = "create horizontal split" })
map("n", "<leader>=", "<cmd> :vertical resize +5 <CR>", { desc = "increase window width" })
map("n", "<leader>-", "<cmd> :vertical resize -5 <CR>", { desc = "decrease window width" })

-- NvimTree
map("n", "<leader>e", "<cmd> NvimTreeToggle <CR>", { desc = "toggle nvim tree" })

-- Telescope mappings
map("n", "<C-n>", "<cmd> :Telescope buffers <CR>", { desc = "Search file in buffers" })
map("n", "<C-g>", "<cmd> :Telescope git_files <CR>", { desc = "Search file in git" })
map("n", "<C-p>", "<cmd> :Telescope find_files <CR>", { desc = "Search file in current directory" })
map("n", "<C-s>", "<cmd> :Telescope live_grep <CR>", { desc = "Search for string" })

-- LSP mappings
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to prev diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
map("n", "<leader>f", function() require("conform").format { lsp_fallback = true } end, { desc = "lsp formatting" })
map("n", "<leader>rn", function() require("nvchad.renamer").open() end, { desc = "lsp rename" })
map("n", "gd", vim.lsp.buf.definition, { desc = "lsp definition" })
map("n", "K", vim.lsp.buf.hover, { desc = "lsp hover" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "lsp code action" })
map("n", "gr", vim.lsp.buf.references, { desc = "lsp references" })

-- Git mappings
map("n", "<leader>gs", "<cmd> :above G<CR>", { desc = "git status" })
map("n", "<leader>gl", "<cmd> :G log --oneline<CR>", { desc = "git log" })
map("n", "<leader>dv", "<cmd> :DiffviewOpen<CR>", { desc = "diffview open" })
map("n", "<leader>dc", "<cmd> :DiffviewClose<CR>", { desc = "diffview close" })

-- Copilot mappings
-- map("n", "<leader>cp", function() require("copilot.panel").open({ "bot", 0.3 }) end)
-- map("i", "<C-f>", function() require("copilot.suggestion").accept() end, { desc = "accept Copilot suggestion" })
-- map("i", "<C-j>", function() require("copilot.suggestion").next() end)
-- map("i", "<C-k>", function() require("copilot.suggestion").prev() end)
