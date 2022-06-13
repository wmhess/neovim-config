# neovim-config

Rolling everything back to a basic lua starting point.
I'm going to keep the initial folder structure, but remove all the details and start over.
This branch is intended to be step 1 with just the structure in place.
Incremental branches will be added as I add more features.
I want to start with just the options and mappings, then add in plugins one by one so I understand them more (what, why how).

Here's what the tree looks like now:

├── README.md
├── init.lua
├── lua
│             ├── mappings.lua
│             ├── options.lua
│             ├── plugins.lua
│             ├── reference
│             │             ├── mappings-ref.md
│             │             ├── options-ref.md
│             │             └── plugins-ref.md
│             └── setup
├── minimal_init.lua
├── plugin
├── temp
└── undo

Here's what the tree looked like when I started:

===============================================================================

├── README.md
├── init.lua
├── lua
│             ├── mappings.lua
│             ├── options.lua
│             ├── plugins.lua
│             └── setup
│                 ├── alpha.lua
│                 ├── autopairs.lua
│                 ├── cmp.lua
│                 ├── colorizer.lua
│                 ├── comment.lua
│                 ├── examples
│                 ├── gitsigns.lua
│                 ├── lsp.lua
│                 ├── lualine.lua
│                 ├── nightfox.lua
│                 ├── null-ls.lua
│                 ├── outline.lua
│                 ├── pounce.lua
│                 ├── range-highlight.lua
│                 ├── renamer.lua
│                 ├── session.lua
│                 ├── spelling.lua
│                 ├── stabilize.lua
│                 ├── telescope.lua
│                 ├── treesitter.lua
│                 └── zen-mode.lua
├── minimal_init.lua
├── plugin
│             └── packer_compiled.lua
├── temp
│             ├── examples
│             ├── filetype.lua
│             ├── init.lua
│             ├── mappings.lua
│             ├── options.lua
│             ├── plugins.lua
│             ├── setup.alpha.lua
│             ├── setup.autopairs.lua
│             ├── setup.cmp.lua
│             ├── setup.colorizer.lua
│             ├── setup.comment.lua
│             ├── setup.gitsigns.lua
│             ├── setup.lsp.lua
│             ├── setup.lualine.lua
│             ├── setup.nightfox.lua
│             ├── setup.null-ls.lua
│             ├── setup.outline.lua
│             ├── setup.pounce.lua
│             ├── setup.range-highlight.lua
│             ├── setup.renamer.lua
│             ├── setup.session.lua
│             ├── setup.spelling.lua
│             ├── setup.stabilize.lua
│             ├── setup.telescope.lua
│             ├── setup.treesitter.lua
│             └── setup.zen-mode.lua
└── undo

===============================================================================


