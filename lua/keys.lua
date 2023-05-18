--[[ keys.lua ]]
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Update Plugins
map("n", "<Leader>u", ":PackerSync<CR>")

-- Open nvimrc file
map("n", "<Leader>v", "<cmd>e $MYVIMRC<CR>")

-- Source nvimrc file - this is a bit funky, need to understand what ':luafile' really means
-- I think the way this is written it means 'the luafile you are currently on/in'.
map("n", "<Leader>sv", ":luafile %<CR>")

-- Open the file explorer (netrw)
map("n", "<Leader>e", "<cmd>e .<CR>")

-- Clear search
map("n", "<Leader>h", "<cmd>noh <CR>")

-- Open netrw
map("n", "<Leader>e", "<cmd>e . <CR>")

-- Save
map("n", "<Leader>w", "<cmd>w <CR>")

-- Try this for delete without copy, so type 'dd or 'dw
map("n", "'", "\"_")

-- Insert mode mappings to mimic some the emacs keybindings ctrl-n and ctrl-p are obviously a bad idea:
-- inoremap <C-e> <C-o>$
map("i", "<C-e>", "<C-o>$")
-- inoremap <C-a> <C-o>0
map("i", "<C-a>", "<C-o>0")
-- inoremap <C-b>  <Left>
map("i", "<C-b>", "<Left>")
-- inoremap <C-f>  <Right>
map("i", "<C-f>", "<Right>")
-- inoremap <C-d>  <Delete>
map("i", "<C-d>", "<Delete>")
-- inoremap <C-k>   <C-o>D
map("i", "<C-k>", "<C-o>D")
-- inoremap ;; <Esc>
map("i", ";;", "<Esc>")
-- this might cause some problems?
map("i", "<C-j>", "<C-o>j")

-- Try this so you really need to mean to record something
-- Playback is still @ + recording letter
--noremap <Leader>q q
map("n", "<Leader>q", "q")
-- noremap q <Nop>
map("n", "q", "<Nop>")


map("n", "<Leader>f",  ":lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({  previewer = false }))<cr>")
--nnoremap <Leader>f :lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ winblend = 10 }))<cr>

-- Telescope Sugar Keys
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Change split orientation
map('n', '<leader>tk', '<C-w>t<C-w>K') -- change vertical to horizontal
map('n', '<leader>th', '<C-w>t<C-w>H') -- change horizontal to vertical
