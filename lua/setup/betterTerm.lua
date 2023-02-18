local status_ok, betterTerm = pcall(require, "betterTerm")
if not status_ok then
	return
end

vim.keymap.set({"n", "t"}, "<C-ñ>", betterTerm.open, { desc = "Open terminal"})
-- Select term focus
vim.keymap.set({"n", "t"}, "<leader>tt", betterTerm.select, { desc = "Select terminal"})
-- Create new term
local current = 2
vim.keymap.set(
    {"n", "t"}, "<leader>tn",
    function()
        betterTerm.open(current)
        current = current + 1
    end,
    { desc = "New terminal"}
)
