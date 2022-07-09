-- Automatically install packer
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = vim.fn.system {
		'git',
		'clone',
		'--depth',
		'1',
		'https://github.com/wbthomason/packer.nvim',
		install_path,
	}
	print 'Installing packer close and reopen Neovim...'
	vim.cmd [[packadd packer.nvim]]
end

-- initialize and configure packer
local packer = require('packer')
packer.init {
	enable = true, -- enable profiling via :PackerCompile profile=true
	threshold = 0, -- the amount in ms that a plugins load time must be over for it to be included in the profile
	display = {
		open_fn = function()
			return require('packer.util').float { border = 'rounded' } -- floating window and rounded border
		end,
	},
}

return packer.startup(function(use)
	-- OS CHECK
	local admin = 'sudo '
	if vim.fn.has('mac') == 1 then
		admin = ''
	end

	-- PLUGINS
	use { 'wbthomason/packer.nvim' }

	-- TREESITTER
    use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	-- LSP
	-- use {
	-- 	'williamboman/nvim-lsp-installer',
	-- 	requires = {
	-- 		{ 'neovim/nvim-lspconfig' },
	-- 		-- { 'jose-elias-alvarez/null-ls.nvim', run = admin .. 'npm install -g prettierd eslint_d' },
	-- 	},
	-- 	config = function() require('user.configs.lsp') end
	-- }

	-- TELESCOPE
	-- use {
	-- 	'nvim-telescope/telescope.nvim',
	-- 	requires = {
	-- 		{ 'nvim-lua/popup.nvim' },
	-- 		{ 'nvim-lua/plenary.nvim' },
	-- 		{ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
	-- 		{ 'nvim-telescope/telescope-file-browser.nvim' },
	-- 	},
	-- 	config = function() require('user.configs.telescope') end
	-- }

	-- DEVELOPMENT
	-- use { 'terrortylor/nvim-comment', config = function() require('user.configs.nvim_comment') end }
	-- use { 'tpope/vim-surround' }
	-- use { 'tpope/vim-fugitive' }
	-- use { 'rhlobo/vim-super-retab' }
	-- use { 'tpope/vim-sleuth' }
	-- use { 'editorconfig/editorconfig-vim' }
	-- use { 'akinsho/toggleterm.nvim', config = function() require('user.configs.toggleterm') end }

	-- -- COMPLETION
	-- use {
	-- 	'hrsh7th/nvim-cmp',
	-- 	requires = {
	-- 		{ 'hrsh7th/nvim-cmp' },
	-- 		{ 'hrsh7th/cmp-buffer' },
	-- 		{ 'hrsh7th/cmp-path' },
	-- 		{ 'f3fora/cmp-spell' },
	-- 		{ 'hrsh7th/cmp-nvim-lsp' },
	-- 		{ 'hrsh7th/cmp-nvim-lua' },
	-- 		{ 'hrsh7th/cmp-vsnip' },
	-- 		{ 'hrsh7th/vim-vsnip' },
	-- 		{ 'rafamadriz/friendly-snippets' },
	-- 	},
	-- 	config = function() require('user.configs.cmp') end
	-- }
	-- use { 'github/copilot.vim' }

	-- LINTING
	-- use {
	-- 	'mhartington/formatter.nvim',
	-- 	config = function() require('user.configs.formatter') end
	-- }

	-- INTERFACE
	-- use {
	-- 	'nvim-lualine/lualine.nvim',
	-- 	config = function() require('user.configs.lualine') end
	-- }
	-- use {
	-- 	'lewis6991/gitsigns.nvim',
	-- 	requires = {
	-- 		{ 'nvim-lua/plenary.nvim' },
	-- 	},
	-- 	config = function() require('user.configs.gitsigns') end
	-- }

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require('packer').sync()
	end
end)
