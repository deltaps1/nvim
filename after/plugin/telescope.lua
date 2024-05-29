local builtin = require('telescope.builtin')
require('telescope').setup{
	defaults = { file_ignore_patterns = {
		"env/",
		"venv/",
		".git/",
        "node_modules/",
        "__pycache__",
	}}
}

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ff', builtin.live_grep, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)


