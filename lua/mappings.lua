local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Map leader to space
vim.g.mapleader = ","

-- Update Plugins
map("n", "<Leader>u", ":PackerSync<CR>")

-- Open nvimrc file
map("n", "<Leader>v", "<cmd>e $MYVIMRC<CR>")

-- Source nvimrc file
map("n", "<Leader>sv", ":luafile %<CR>")

-- Quick new file
map("n", "<Leader>n", "<cmd>enew<CR>")


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