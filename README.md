# Neovim Configuration

A customized [LazyVim](https://github.com/LazyVim/LazyVim) (v8) configuration for Neovim, built with Lua.

## Features

- **Plugin Management**: Lazy.nvim with pinned versions via `lazy-lock.json`
- **UI**: Snacks dashboard with custom ASCII header, NeoTree, Lualine, Which-Key, Rose Pine theme with black background
- **Fuzzy Finder**: Telescope with hidden files and `.gitignore` bypass
- **Completion**: blink.cmp
- **Navigation**: flash.nvim, flash-treesitter
- **Git**: gitsigns.nvim (inline diff, git blame), grug-far.nvim (find & replace)
- **Language Extras** (via LazyVim Extras):
  - C/C++ (clangd), Git, Go, Python, Rust, SQL, TypeScript/JavaScript
- **LSP**: mason.nvim + mason-lspconfig, rustaceanvim, venv-selector, protols (Protobuf)
- **Linting & Formatting**: nvim-lint, Conform.nvim, StyLua, shfmt, shellcheck
- **Session Management**: persistence.nvim
- **Diagnostics**: trouble.nvim, todo-comments.nvim
- **Editor**: nvim-treesitter, mini.ai, mini.pairs, noice.nvim
- **Database**: vim-dadbod, vim-dadbod-ui, vim-dadbod-completion
- **Misc**: ts-comments.nvim, crates.nvim, lazydev.nvim, mini.icons, friendly-snippets

## Keybindings

| Mode | Key        | Action                              |
|------|------------|-------------------------------------|
| Insert | `jk`     | Exit insert mode                    |
| Normal | `<C-,>`   | Toggle line comment                 |
| Normal | `<C-_>`   | Toggle line comment                 |
| Visual | `<C-,>`   | Toggle line comment                 |
| Visual | `<C-_>`   | Toggle line comment                 |
| Normal/Visual | `<A-Down>` | Move selection/line down       |
| Normal/Visual | `<A-Up>`   | Move selection/line up         |

## Project Structure

```
├── init.lua                  # Entry point
├── lazy-lock.json            # Pinned plugin versions
├── lazyvim.json              # Language extras config
├── stylua.toml               # StyLua config
├── .neoconf.json             # Lua LSP config
├── lua/
│   ├── config/
│   │   ├── autocmds.lua      # Custom autocmds
│   │   ├── keymaps.lua       # Custom key mappings
│   │   ├── lazy.lua          # Lazy.nvim bootstrap
│   │   └── options.lua       # Neovim options
│   └── plugins/
│       ├── black.lua         # Rose Pine colorscheme + black background
│       ├── dashboard.lua     # Snacks.nvim dashboard
│       ├── neotree.lua       # NeoTree (show dotfiles/gitignored)
│       ├── protobuf.lua      # Protobuf LSP, treesitter, formatting (buf)
│       ├── telescope.lua     # Telescope (show hidden, no .gitignore)
│       └── example.lua       # Example (disabled by default)
```

## Getting Started

1. Clone this repo to `~/.config/nvim`
2. Run `:Mason` to install LSPs, formatters, and linters
3. Run `:Lazy` to sync pinned plugins

## Prerequisites

- Neovim v0.9+
- Git
- True color terminal

## License

Apache License 2.0
