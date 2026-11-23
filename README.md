# Neovim Configuration

A customized [LazyVim](https://github.com/LazyVim/LazyVim) (v8) configuration for Neovim, built with Lua.

## Features

- **Plugin Management**: Lazy.nvim with pinned versions (`lazy-lock.json`, gitignored)
- **UI**: Snacks dashboard with custom ASCII header, NeoTree, Lualine, Which-Key, Rose Pine theme with black background
- **Fuzzy Finder**: Telescope with hidden files and `.gitignore` bypass
- **Completion**: blink.cmp (via LazyVim defaults)
- **Navigation**: flash.nvim (via LazyVim defaults)
- **Git**: gitsigns.nvim (inline diff, git blame), grug-far.nvim (find & replace)
- **Language Extras** (via LazyVim Extras):
  - C/C++ (clangd), Docker, Git, Go, Kotlin, Markdown, Python, Rust, SQL, TypeScript/JavaScript, YAML
- **LSP**: mason.nvim + mason-lspconfig, rustaceanvim, venv-selector, protols (Protobuf)
- **Linting & Formatting**: nvim-lint, Conform.nvim, StyLua, shfmt, shellcheck
- **Session Management**: persistence.nvim
- **Diagnostics**: trouble.nvim, todo-comments.nvim
- **Editor**: nvim-treesitter, mini.ai, mini.pairs, noice.nvim
- **Database**: vim-dadbod, vim-dadbod-ui, vim-dadbod-completion
- **Markdown**: render-markdown.nvim (inline rendering), markdown-preview.nvim (live preview)
- **Misc**: ts-comments.nvim, crates.nvim, lazydev.nvim, mini.icons, friendly-snippets
- **Local Plugin**: vim-with-me (collaborative editing, loaded from `lua/vim-with-me`)

## Keybindings

| Mode | Key        | Action                              |
|------|------------|-------------------------------------|
| Insert | `jk` / `JK` | Exit insert mode                  |
| Normal | `<C-,>` / `<C-_>` | Toggle line comment             |
| Visual | `<C-,>` / `<C-_>` | Toggle line comment             |
| Normal/Visual | `<A-Down>` | Move selection/line down       |
| Normal/Visual | `<A-Up>`   | Move selection/line up         |
| Normal | `<leader>rr` | Insert `if err != nil { return err }` boilerplate |
| Normal | `<leader>uu` | Toggle Undotree                   |

## Project Structure

```
├── init.lua                  # Entry point (bootstrap + global keymaps)
├── lazy-lock.json            # Pinned plugin versions
├── lazyvim.json              # Language extras config
├── stylua.toml               # StyLua config
├── .neoconf.json             # Lua LSP config
├── lua/
│   ├── config/
│   │   ├── autocmds.lua      # Custom autocmds
│   │   ├── keymaps.lua       # Custom key mappings
│   │   ├── lazy.lua          # Lazy.nvim bootstrap & LazyVim extras
│   │   └── options.lua       # Neovim options + Undotree keymap
│   ├── plugins/
│   │   ├── black.lua         # Rose Pine colorscheme + black background
│   │   ├── dashboard.lua     # Snacks.nvim dashboard with ASCII header
│   │   ├── neotree.lua       # NeoTree (show dotfiles/gitignored)
│   │   ├── protobuf.lua      # Protobuf LSP, treesitter, formatting (buf)
│   │   ├── telescope.lua     # Telescope (show hidden, no .gitignore)
│   │   ├── vim-with-me.lua   # Local plugin loader (empty spec)
│   │   └── example.lua       # Example configs (disabled by default)
│   └── vim-with-me/          # Local collaborative editing plugin
│       ├── init.lua          # Main entry (START/CLOSE functions)
│       ├── app/              # App logic (token handling)
│       ├── tcp/              # TCP connection handling
│       ├── window/           # Window management (color, cache)
│       └── utils.lua         # Utilities
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