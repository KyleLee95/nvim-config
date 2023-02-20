--tbh I have no idea what this stuff does. All I know is that it generally have Packer look through the file system and search for configs. It's what allows us to have nice modules instead of one 10,000 line init.lua
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
--really have no idea what this does lol
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
end

--this function searches the /setup directory for the config based on the file name.
--inspired by https://benfrain.com/refactor-your-neovim-init-lua-single-file-to-modules-with-packer/
function get_setup(name)
	return string.format('require("setup/%s")', name)
end

return require('packer').startup(function(use)
	-- Packer
	use 'wbthomason/packer.nvim'


	--LSP -- *beep boop* autocomplete! But not co-pilot lol

	use {
		'VonHeikemen/lsp-zero.nvim',
		config = get_setup('lspzero'),
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig',            config = get_setup('lspconfig') }, -- Required
			{ 'williamboman/mason.nvim' }, -- Optional
			{ 'williamboman/mason-lspconfig.nvim' }, -- Optional

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' }, -- Required
			{ 'hrsh7th/cmp-nvim-lsp' }, -- Required
			{ 'hrsh7th/cmp-buffer' }, -- Optional
			{ 'hrsh7th/cmp-path' }, -- Optional
			{ 'saadparwaiz1/cmp_luasnip' }, -- Optional
			{ 'hrsh7th/cmp-nvim-lua' }, -- Optional

			-- Snippets
			{ 'L3MON4D3/LuaSnip' }, -- Required
			{ 'rafamadriz/friendly-snippets' }, -- Optional
		},
	}

	--LSP config for P R E T T I E R (now I don't have to indent my own code)
	use { 'neovim/nvim-lspconfig', config = get_setup("lspconfig") }
	use { 'jose-elias-alvarez/null-ls.nvim', config = get_setup("nullls") }
	use { 'MunifTanjim/prettier.nvim', config = get_setup("prettier") }
	use { 'MunifTanjim/eslint.nvim', config = get_setup("eslint") }


	--treesitter -- syntax highlighting
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		config = get_setup('treesitter')
	}

	--telescope -- search all the things!
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}


	--autopairs -- insert brackets in pairs

	use { "windwp/nvim-autopairs", config = get_setup("autopairs") }

	--barbar -- have clickable browserlike tabs is nice!
	use { 'romgrk/barbar.nvim', requires = 'nvim-web-devicons' }


	--vim airline -- nice status bar at the bottom.
	use { "vim-airline/vim-airline" }


	--coderunner (just like vscode! Wow, why not just use vscode? it would be way less work)
	use { 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim', config = get_setup("coderunner") }

	--integrated terminal like vscode! c'mon bro, you really just want vscode
	use { 'CRAG666/betterTerm.nvim', config = get_setup("betterTerm") }

	--dashboard -- lol why not just use doomacs? oh right... you did and you sucked at it lol.
	use {
		'glepnir/dashboard-nvim',
		event = 'VimEnter',
		config = get_setup("dashboard"),
		requires = { 'nvim-tree/nvim-web-devicons' }
	}
	--Theme -- why even us nvim if you just want it to look like vscode?
	use { "Mofiqul/vscode.nvim", config = get_setup("vscode") }

	--NeoTree -- see everything as a tree because cd'ing and ls'ing is for losers.
	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
		config = get_setup("neotree")
	}
end)
