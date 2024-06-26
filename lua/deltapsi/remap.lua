vim.g.mapleader = " "

-- Hurtig måde at komme til NetRw på
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Bytter om på funktionaliteten af ^ og 0
vim.keymap.set("n", "0", "^", { remap = true })

-- Fjerner søge-highlights
vim.keymap.set("n", "<C-s>", "<cmd>noh<CR>")

-- Mulighed for at rykke linjer i vl-mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Ved J i n-mode, så forbliver cursoren det samme sted
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Ved søgning forbliver cursoren i midten 
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Indsætter uden at overskrive bufferen ved deletion
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Lettere måde at kopiere til system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Nice resizes?
vim.keymap.set('n', '<C-Left>', '<cmd>vertical resize -2<CR>')
vim.keymap.set('n', '<C-Right>', '<cmd>vertical resize 2<CR>')
vim.keymap.set('n', '<C-Down>', '<cmd>resize +2<CR>')
vim.keymap.set('n', '<C-Up>', '<cmd>resize -2<CR>')

-- Big bang replace!
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- chmod +x ftw!
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Go back to previous file
vim.keymap.set("n", "gn", "<cmd>e#<CR>")

-- Make enter do usefull stuff
vim.keymap.set("n", "<Enter>", "<cmd>FineCmdline<CR>")

-- Create a terminal
vim.keymap.set('n', '<C-n>', function()
  vim.cmd('split')
  vim.cmd('wincmd j')
  vim.cmd('term')
  vim.cmd('setlocal nonumber norelativenumber')
  vim.cmd('startinsert')
end, { noremap = true, silent = true })

vim.keymap.set('n', '<C-m>', function()
  vim.cmd('vsplit')
  vim.cmd('wincmd l')
  vim.cmd('term')
  vim.cmd('setlocal nonumber norelativenumber')
  vim.cmd('startinsert')
end, { noremap = true, silent = true })

-- Map Ctrl-W t to switch from terminal to other windows easily
vim.keymap.set('t', '<C-w>', [[<C-\><C-N><C-w>]], { noremap = true, silent = true })

