-- check if packer is installed (~/local/share/nvim/site/pack)
local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

if not packer_exists then
	if vim.fn.input("Hent packer.nvim? (y for yada)") ~= "y" then
		return
	end

	local directory = string.format(
	'%s/site/pack/packer/opt/',
	vim.fn.stdpath('data')
	)

	vim.fn.mkdir(directory, 'p')

	local git_clone_cmd = vim.fn.system(string.format(
	'git clone %s %s',
	'https://github.com/wbthomason/packer.nvim',
	directory .. '/packer.nvim'
	))

	print(git_clone_cmd)
	print("Henter packer.nvim...")

	return
end

return require('packer').startup(function()

  -- Packer
  use {'wbthomason/packer.nvim', opt = true}

  -- FZF
  use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  use 'nvim-telescope/telescope-media-files.nvim'

  -- Formatting
  use 'norcalli/nvim-colorizer.lua'
  use 'jiangmiao/auto-pairs'
  use 'machakann/vim-sandwich'
  use 'tpope/vim-commentary'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'hrsh7th/nvim-compe'
  use 'kabouzeid/nvim-lspinstall'

  -- Closer
  use '9mm/vim-closer'

  -- Syntax
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'nvim-treesitter/playground'

  -- Theme
  use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}
  use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}
  use {'hoob3rt/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}
  use 'ghifarit53/tokyonight-vim'
  use 'tiagovla/tokyodark.nvim'
  use 'gruvbox-community/gruvbox'
  use 'arcticicestudio/nord-vim'
  use 'joshdick/onedark.vim'

  -- Geneal Tools
  use 'tiagovla/ezmap.nvim'
  use 'lambdalisue/suda.vim'
  use 'tweekmonster/startuptime.vim'
  -- use 'tpope/vim-fugitive'
  use 'mbbill/undotree'
  use 'puremourning/vimspector'
  use 'liuchengxu/vim-which-key'
  use 'voldikss/vim-floaterm'

  -- Git
  use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}

  -- Snips
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'

  -- Latex
  use 'lervag/vimtex'
  use 'iamcco/markdown-preview.nvim'

end)