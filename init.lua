-- Following the info @ https://mattermost.com/blog/how-to-install-and-set-up-neovim-for-code-editing/
-- Most of the info there is good, but the second part where they talk about the plugins is pretty messed up. I needed to just follow the Packer github page.

--[[ init.lua ]]
-- to source after changes type :luafile % on the command line


-- vim.g: maps to vim.api.nvim_set_var; sets global variables. equivalent to :set.
-- vim.o: maps to vim.api.nvim_win_set_var; sets variables scoped to a given window.
-- vim.b; maps to vim.api.nvim_buf_set_var; sets variables scoped to a given buffer.

-- vim.go: maps to vim.api.nvim_set_option; equivalent to :setglobal.
-- vim.bo; maps to vim.api.nvim_buf_set_option; equivalent to :setlocal for buffer options.
-- vim.wo: maps to vim.api.nvim_win_set_option; equivalent to :setlocal for window options.


-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = " "
vim.g.localleader = "\\"

-- IMPORTS
require('vars')      -- Variables
require('opts')      -- Options
require('keys')      -- Keymaps
require('plug')      -- Plugins

-- PLUGINS:
require('lualine').setup {
  options = {
    theme = 'dracula-nvim'
  }
}
