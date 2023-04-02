-- [[ plug.lua ]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Nordfox Colorscheme
  use 'EdenEast/nightfox.nvim' 
  
  -- Lualine (status line)
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons',
                opt = true}
  }
  
  -- Dracula Colorscheme
  use 'Mofiqul/dracula.nvim'
  
  -- Telescope
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- Markdown Preview
  -- Install without yarn or npm
  -- https://github.com/iamcco/markdown-preview.nvim
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
  
end)
