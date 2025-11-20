local builtin = require('telescope.builtin')
vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv",vim.cmd.Ex)
vim.keymap.set("n","<leader>wq",vim.cmd.quit)
vim.keymap.set("n","<leader>bs",vim.cmd.write)
vim.keymap.set("n","<leader>wv",vim.cmd.vsp)
vim.keymap.set("n", "<leader>wh", "<C-w>h", { desc = "Go to left split" })
vim.keymap.set("n", "<leader>wj", "<C-w>j", { desc = "Go to below split" })
vim.keymap.set("n", "<leader>wk", "<C-w>k", { desc = "Go to above split" })
vim.keymap.set("n", "<leader>wl", "<C-w>l", { desc = "Go to right split" })
vim.keymap.set("n", "<leader>ps", function() builtin.grep_string({search = vim.fn.input("Grep > ")});
end)
-- Buffer switching
vim.keymap.set("n", "<leader>bb", function()
  require('telescope.builtin').buffers()
end, { desc = "Telescope buffer picker" })

-- -- Avante AI Assistant keymaps
-- vim.keymap.set("n", "<leader>aa", function() require("avante.api").ask() end, { desc = "Avante: Ask" })
-- vim.keymap.set("v", "<leader>aa", function() require("avante.api").ask() end, { desc = "Avante: Ask" })
-- vim.keymap.set("n", "<leader>ar", function() require("avante.api").refresh() end, { desc = "Avante: Refresh" })
-- vim.keymap.set("n", "<leader>ae", function() require("avante.api").edit() end, { desc = "Avante: Edit" })
-- vim.keymap.set("v", "<leader>ae", function() require("avante.api").edit() end, { desc = "Avante: Edit" })

