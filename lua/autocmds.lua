-- There's a bunch of commented out autocmd things in the options.lua file.
-- I'm putting these here since they are the ones that I've added and know a bit more about.
-- Maybe I can pull those others here as I see a need for them and learn a bit more.
--

vim.cmd ([[
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END
]])

vim.cmd("colorscheme nordfox")
