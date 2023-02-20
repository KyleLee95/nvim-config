-- This file directly interfaces with the built-in nvim LSP (which LSP-zero interfaces with)

-- These two lines tap directly into nvim's built-in LSP to create the the inline diagnostics. See more: https://levelup.gitconnected.com/a-step-by-step-guide-to-configuring-lsp-in-neovim-for-coding-in-next-js-a052f500da2#502a
--vim.o.updatetime = 250
--vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim diagnostic.open_float(nil, {focus=false})]]

--vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--	vim.lsp.diagnostic.on_publish_diagnostics,
--	{
--		virtual_text = false,
--		signs = true,
--		update_in_insert = false,
--		underline = true,
--	}
--)
--config below sets up javascript/typescript support. the line below that fixes the issue where you open up a project without a Eslint config file.
require 'lspconfig'.tsserver.setup {
	filetypes = { "javascript", "typescript", "typescriptreact", "typescript.tsx" },
	root_dir = function() return vim.loop.cwd() end
}
