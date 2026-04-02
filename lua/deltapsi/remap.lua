-- Hurtig måde at komme til NetRw på
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Åbn filbrowser" })

-- Bytter om på funktionaliteten af ^ og 0
vim.keymap.set("n", "0", "^", { remap = true, desc = "Gå til første ikke-blanke tegn" })

-- Fjerner søge-highlights
vim.keymap.set("n", "<C-s>", "<cmd>noh<CR>", { desc = "Fjern søge-highlights" })

-- Mulighed for at rykke linjer i vl-mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Ryk linje ned" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Ryk linje op" })

-- Ved J i n-mode, så forbliver cursoren det samme sted
vim.keymap.set("n", "J", "mzJ`z", { desc = "Saml linje nedenfor uden at flytte cursor" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll ned og centrer" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll op og centrer" })

-- Ved søgning forbliver cursoren i midten
vim.keymap.set("n", "n", "nzzzv", { desc = "Næste søgeresultat (centreret)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Forrige søgeresultat (centreret)" })

-- Indsætter uden at overskrive bufferen ved deletion
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Indsæt uden at overskrive buffer" })

-- Lettere måde at kopiere til system clipboard
vim.keymap.set("n", "<leader>y", "\"+y", { desc = "Kopiér til system-clipboard" })
vim.keymap.set("v", "<leader>y", "\"+y", { desc = "Kopiér til system-clipboard" })
vim.keymap.set("n", "<leader>Y", "\"+Y", { desc = "Kopiér linje til system-clipboard" })

-- Nice resizes?
vim.keymap.set('n', '<C-Left>', '<cmd>vertical resize -2<CR>', { desc = "Formindsk vindue vandret" })
vim.keymap.set('n', '<C-Right>', '<cmd>vertical resize 2<CR>', { desc = "Forstør vindue vandret" })
vim.keymap.set('n', '<C-Down>', '<cmd>resize +2<CR>', { desc = "Forstør vindue lodret" })
vim.keymap.set('n', '<C-Up>', '<cmd>resize -2<CR>', { desc = "Formindsk vindue lodret" })

-- Easy navigations between splits
vim.keymap.set('n', '<leader>l', '<C-w>l', { desc = "Gå til vindue til højre" })
vim.keymap.set('n', '<leader>k', '<C-w>k', { desc = "Gå til vindue ovenfor" })
vim.keymap.set('n', '<leader>j', '<C-w>j', { desc = "Gå til vindue nedenfor" })
vim.keymap.set('n', '<leader>h', '<C-w>h', { desc = "Gå til vindue til venstre" })

-- Big bang replace!
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Erstat ord under cursor globalt" })

-- chmod +x ftw!
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Gør fil eksekverbar" })

-- Go back to previous file
vim.keymap.set("n", "gn", "<cmd>e#<CR>", { desc = "Gå til forrige fil" })

-- Create a horizontal terminal split
vim.keymap.set('n', '<leader>th', function()
  vim.cmd('split')
  vim.cmd('wincmd j')
  vim.cmd('term')
  vim.cmd('setlocal nonumber norelativenumber')
  vim.cmd('startinsert')
end, { noremap = true, silent = true, desc = "Åbn terminal (vandret split)" })

-- Create a vertical terminal split
vim.keymap.set('n', '<leader>tv', function()
  vim.cmd('vsplit')
  vim.cmd('wincmd l')
  vim.cmd('term')
  vim.cmd('setlocal nonumber norelativenumber')
  vim.cmd('startinsert')
end, { noremap = true, silent = true, desc = "Åbn terminal (lodret split)" })

-- Map Ctrl-W to switch from terminal to other windows easily
vim.keymap.set('t', '<C-w>', [[<c-\><c-n><C-w>]], { noremap = true, silent = true, desc = "Skift vindue fra terminal" })
vim.keymap.set('t', '<Esc>', [[<c-\><c-n>]], { noremap = true, silent = true, desc = "Forlad terminal-tilstand" })
