--[[ keys.lua ]]

local map = vim.api.nvim_set_keymap
-- This function takes in four parameters:
--  1. mode: the mode you want the key bind to apply to 
--      (e.g., insert mode, normal mode, command mode, visual mode).
--  2. sequence: the sequence of keys to press.
--  3. command: the command you want the keypresses to execute.
--  4. options: an optional Lua table of options to configure (e.g., silent or noremap).



-- remap the key used to leave insert mode
-- map('i', 'jk', '<esc>', {})
