-- moving through windows
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
--resizing windows
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase Window Width" })
-- move the highlited area up or down
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
-- remove highliting after search/replace
vim.keymap.set("n", "<A-n>", ":nohlsearch<CR>",
  { desc = "Remove the presistante highliting over words after search and replace" })

-- getting the diagnostics
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "show error message" })
-- jumping to the diagnostics
vim.keymap.set("n", "<leader>j", function()
    vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.error })
  end,
  { desc = "jump to the first error in the file" })
