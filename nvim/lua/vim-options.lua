vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>wh", "<C-w>h", { desc = "Go to left split" })
vim.keymap.set("n", "<leader>wj", "<C-w>j", { desc = "Go to below split" })
vim.keymap.set("n", "<leader>wk", "<C-w>k", { desc = "Go to above split" })
vim.keymap.set("n", "<leader>wl", "<C-w>l", { desc = "Go to right split" })
vim.keymap.set("n", "<leader>wv", ":vsplit<CR>", { desc = "Vertical Split" })
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format file" })
vim.keymap.set("n","<leader>wq", ":q!", {desc = "Closing Buffer"})
vim.opt.number = true
vim.opt.relativenumber = true

