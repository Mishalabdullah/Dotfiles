local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- For Viewing Diagonstics
vim.api.nvim_set_keymap(
  'n',
  '<leader>fd',
  '<cmd>lua require("telescope.builtin").diagnostics()<CR>',
  { noremap = true, silent = true }
)
-- Buffer switching with telescope
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
