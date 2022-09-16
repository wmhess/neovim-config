# neovim-config (lua-slim)

## Interesting side-note: If you are on this basic branch and try to use Lunar Vim elsewhere it will complain.

Here's what the tree looks like at the start of "lua-slim":

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

===============================

I want it to look like this:

├── README.md
├── init.lua
├── lua
             ├── mappings.lua
             ├── options.lua
             ├── reference
                          ├── mappings-ref.md
                          ├── options-ref.md

===============================

To start off, I'm going to test by adding a few simple options and mappings.
