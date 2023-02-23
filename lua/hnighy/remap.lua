vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", ":BufDel<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)
vim.keymap.set("n", "<leader>s", ":w<CR>")

-- Nvim Tree "Remaps
vim.keymap.set("n", "<leader>tr", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>T", ":NvimTreeFindFile<CR>")

vim.keymap.set("n", "<leader>B", "<C-w>l")

-- Fine CMD Line
vim.keymap.set("n", ":", ":FineCmdline<CR>")

-- HTML Helpers

-- Float Term
vim.keymap.set("n", "<leader>T", ":FloatermNew<CR>")
vim.keymap.set("t", "<leader>T", ":FloatermToggle<CR>")
