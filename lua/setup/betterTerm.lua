local status_ok, betterTerm = pcall(require, "betterTerm")
if not status_ok then
	return
end

betterTerm.setup {
	prefix = "Term_",
	startInserted = true,
	position = "bot",
	size = 18
}


vim.keymap.set({ "n", "t" }, "<leader>t", betterTerm.open, { desc = "Open terminal" })
-- Select term focus
vim.keymap.set({ "n", "t" }, "<leader>tt", betterTerm.select, { desc = "Select terminal" })
-- Create new term
local current = 2
vim.keymap.set(
	{ "n", "t" }, "<leader>tn",
	function()
		betterTerm.open(current)
		current = current + 1
	end,
	{ desc = "New terminal" }
)

-- use the best keymap for you
-- change 1 for other terminal id
-- Change "get_filetype_command()" to "get_project_command().command" for running projects
vim.keymap.set("n", "<leader>e", function()
	require("betterTerm").send(require("code_runner.commands").get_filetype_command(), 1,
		{ clean = false, interrupt = true })
end, { desc = "Excute File" })
