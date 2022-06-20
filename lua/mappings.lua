local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Map leader to comma | The default is "\". Give that a go for a while before remapping.
-- vim.g.mapleader = ","

-- Update Plugins
map("n", "<Leader>u", ":PackerSync<CR>")

-- Open nvimrc file
map("n", "<Leader>v", "<cmd>e $MYVIMRC<CR>")

-- Source nvimrc file
map("n", "<Leader>sv", ":luafile %<CR>")

-- Quick new file
map("n", "<Leader>n", "<cmd>enew<CR>")

-- Telescope (slowly adding these in as I learn what they do)
local km = vim.keymap
-- Add moves of more than 5 to the jump list
-- km.set("n", "j", [[(v:count > 5 ? "m'" . v:count : "") . 'j']], { expr = true, desc = "if j > 5 then add to jumplist" })
km.set("n", "<leader>p", function()
  require("telescope.builtin").find_files()
end)
-- km.set("n", "<leader>r", function()
--   require("telescope.builtin").registers()
-- end)
km.set("n", "<leader>g", function()
  require("telescope.builtin").live_grep()
end)
-- km.set("n", "<leader>b", function()
--   require("telescope.builtin").buffers()
-- end)
-- km.set("n", "<leader>j", function()
--   require("telescope.builtin").help_tags()
-- end)
-- km.set("n", "<leader>h", function()
--   require("telescope.builtin").git_bcommits()
-- end)
-- This one needs the file_browser extension.
-- km.set("n", "<leader>f", function()
--   require("telescope").extensions.file_browser.file_browser()
-- end)

-- km.set("n", "<leader>s", function()
--   require("telescope.builtin").spell_suggest(require("telescope.themes").get_cursor({}))
-- end)
-- km.set("n", "<leader>i", function()
--   require("telescope.builtin").git_status()
-- end)
-- km.set("n", "<leader>ca", function()
--   vim.lsp.buf.code_action()
-- end)
-- km.set("n", "<leader>cs", function()
--   require("telescope.builtin").lsp_document_symbols()
-- end)
-- km.set("n", "<leader>cd", function()
--   require("telescope.builtin").diagnostics()
-- end)
-- km.set("n", "<leader>cr", function()
--   require("telescope.builtin").lsp_references()
-- end)
-- km.set({ "v", "n" }, "<leader>cn", function()
--   vim.lsp.buf.rename()
-- end, { noremap = true, silent = true })
-- km.set("n", "<leader>ci", function()
--   vim.diagnostic.open_float()
-- end)


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
