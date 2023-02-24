--need to map leader at top so that other plugins don't interfere
vim.g.mapleader = ","

function map(mode, lhs, rhs, opts)
	local options = { noremap = false, silent = true, nowait = true }
	vim.keymap.set(mode, lhs, rhs, options)
end

--map({'i','n','v'}, '<Left>', '<nop>')
--map({'i','n','v'}, '<Right>', '<nop>')
--map({'i','n','v'}, '<Up>', '<nop>')
--map({'i','n','v'}, '<Down>', '<nop>')
map({ "i", "n", "v" }, "<C-b>", ":Neotree toggle <Enter>")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

--Remap copy paste to work with system clipboard
vim.keymap.set("n", "<leader>Y", "+yg")
vim.keymap.set("n", "<leader>y", "+y")
vim.keymap.set("n", "<leader>yy", "+yy")

vim.keymap.set("n", "<leader>p", "+p")
vim.keymap.set("n", "<leader>P", "+P")
