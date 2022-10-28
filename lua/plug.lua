-- [[ plug.lua ]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colorscheme (using the nordfox variant)    
  use 'EdenEast/nightfox.nvim' 
  
  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',                     -- statusline
    requires = {'kyazdani42/nvim-web-devicons',
                opt = true}
  }
  
  -- NvimTree (trying it out because netrw is proving to be buggy)
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- Git Integration

  --   Icon indicates when a file is:
  --   - ✗  unstaged or folder is dirty
  --   - ✓  staged
  --   - ★  new file
  --   - ✓ ✗ partially staged
  --   - ✓ ★ new file staged
  --   - ✓ ★ ✗ new file staged and has unstaged modifications
  --   - ═  merging
  --   - ➜  renamed

  -- Extra Colorscheme
  use 'Mofiqul/dracula.nvim'
end)
