-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- You must run this or `PackerSync` whenever you make changes to your plugin configuration
-- -- Regenerate compiled loader file
-- :PackerCompile

-- -- Remove any disabled or unused plugins
-- :PackerClean

-- -- Clean, then install missing plugins
-- :PackerInstall

-- -- Clean, then update and install plugins
-- :PackerUpdate

-- -- Perform `PackerUpdate` and then `PackerCompile`
-- :PackerSync

-- -- Loads opt plugin immediately
-- :PackerLoad completion-nvim ale

vim.api.nvim_command("packadd packer.nvim")
-- returns the require for use in `config` parameter of packer's use
-- expects the name of the config file
function get_setup(name)
  return string.format('require("setup/%s")', name)
end

return require('packer').startup({
  function(use)
  -- Packer can manage itself
  use('wbthomason/packer.nvim')
  use({ "EdenEast/nightfox.nvim", config = get_setup("nightfox") })
  use({
    'nvim-lualine/lualine.nvim',
     config = get_setup("lualine"), -- will this blow up?
     event = "VimEnter",
     requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  })
  use({
    'nvim-treesitter/nvim-treesitter',
    config = get_setup("nvim-treesitter"), -- will this blow up?
    run = ':TSUpdate'
  })
  use({
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} },
  config = get_setup("telescope"),
  })
end})