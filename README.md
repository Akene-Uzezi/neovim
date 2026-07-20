# 🚀 Neovim Configuration

A customized Neovim configuration built on [LazyVim](https://github.com/LazyVim/LazyVim), featuring a curated selection of plugins and language support.

## ✨ Features

This configuration is built with **Lua** and includes:

- **Plugin Management**: [Lazy.nvim](https://github.com/folke/lazy.nvim) for fast, modern plugin management with pinned versions via `lazy-lock.json`
- **Colorscheme**: [Graphite](https://github.com/binarylinuxx/graphite-nvim) as the primary theme
- **UI Enhancements**: Snacks dashboard with custom header, NeoTree file explorer, statusline via Lualine, and Noice for improved command/message UI
- **Fuzzy Finder**: Telescope for file finding and searching, with hidden files shown and `.gitignore` disabled by default
- **Completion**: blink.cmp for fast, modern completion
- **Language Support**: Pre-configured for multiple languages:
  - 🔗 Git
  - 🐳 Docker / Docker Compose
  - 🐹 Go
  - 🐍 Python (with venv-selector)
  - 🦀 Rust (with rustaceanvim and crates.nvim)
  - 📊 SQL (with vim-dadbod)
  - 📘 TypeScript / JavaScript
- **Formatting**: Conform.nvim with StyLua, shfmt, and other formatters
- **Linting**: nvim-lint with shellcheck, flake8, and more
- **Development Tools**: Mason for LSP, DAP, linter, and formatter management
- **Navigation**: flash.nvim for quick jumps, which-key for keybinding discovery
- **Session Management**: persistence.nvim for automatic session saving
- **Diagnostics**: trouble.nvim for a better diagnostics and quickfix UI
- **Git Integration**: gitsigns.nvim for inline git status
- **Snippets**: friendly-snippets collection
- **Database Support**: vim-dadbod with completion and UI
- **Code Editing**: mini.pairs for auto pairs, mini.ai for enhanced text objects, nvim-treesitter with textobjects and autotag
- **Comments**: ts-comments and todo-comments for better code commenting
- **Find & Replace**: grug-far.nvim for project-wide search and replace

## 📁 Project Structure

```
├── init.lua                  # Entry point - bootstraps Lazy.nvim and sets jk insert escape
├── lazy-lock.json            # Pinned plugin versions for reproducible installs
├── lazyvim.json              # LazyVim language extras configuration
├── LICENSE                   # Apache License 2.0
├── README.md                 # This file
├── stylua.toml               # StyLua formatting configuration
├── .neoconf.json             # neoconf/neodev configuration for Lua LSP
└── lua/
    ├── config/
    │   ├── autocmds.lua      # Custom autocmds
    │   ├── keymaps.lua       # Custom key mappings
    │   ├── lazy.lua          # Lazy.nvim bootstrap and setup
    │   └── options.lua       # Neovim options
    └── plugins/
        ├── colorscheme.lua   # Graphite theme and colorscheme config
        ├── dashboard.lua     # Snacks.nvim dashboard with custom ASCII header
        ├── neotree.lua       # NeoTree file explorer (shows dotfiles and gitignored items)
        ├── telescope.lua     # Telescope fuzzy finder (shows hidden files, ignores .gitignore)
        └── example.lua       # Example plugin configurations (disabled by default)
```

## 🚀 Getting Started

### Prerequisites

- Neovim (v0.8 or later)
- Git
- A terminal that supports true color

### Installation

1. Clone this configuration to your Neovim config directory:

```bash
# Linux/macOS
git clone git@github.com:Akene-Uzezi/neovim.git ~/.config/nvim

# Windows (PowerShell)
git clone git@github.com:Akene-Uzezi/neovim.git $env:APPDATA\nvim
```

2. Start Neovim - Lazy.nvim will automatically bootstrap itself and install all pinned plugins

```bash
nvim
```

3. Wait for all plugins to install. You can check installation progress with `:Lazy`

## ⌨️ Key Features

### Custom Keybindings

- **Insert Mode**: `jk` exits insert mode (configured in `init.lua`)
- **which-key**: Press `<Space>` or any mapped key to discover available keybindings

### Plugin Highlights

- **Dashboard**: Quick start screen via snacks.nvim with custom ASCII art header
- **NeoTree**: File explorer showing hidden and gitignored items for full project visibility
- **Telescope**: Powerful fuzzy finder configured to show hidden files and bypass `.gitignore`
- **Mason**: Manages LSP servers, DAP adapters, formatters, and linters
- **LazyVim Extras**: Language-specific plugins for Git, Docker, Go, Python, Rust, SQL, and TypeScript/JavaScript
- **Conform**: Automatic formatting on save via Conform.nvim
- **nvim-lint**: Automatic linting via nvim-lint
- **Graphite**: Modern, high-contrast colorscheme with priority 1000

## 🛠️ Customization

### Adding New Plugins

Create a new file in `lua/plugins/` with your plugin specification:

```lua
return {
  {
    "plugin-author/plugin-name",
    opts = {
      -- your configuration here
    },
  },
}
```

Lazy.nvim will automatically load and configure it.

### Modifying Options

Edit `lua/config/options.lua` to customize Neovim settings.

### Custom Keymaps

Add keybindings to `lua/config/keymaps.lua` following the example patterns.

### Changing Colorscheme

Edit `lua/plugins/colorscheme.lua` to switch to a different theme.

### Enabling LazyVim Extras

Edit `lazyvim.json` to enable additional language extras from [LazyVim Extras](https://www.lazyvim.org/extras).

### Configuring Mason Tools

Ensure required LSPs, formatters, and linters are installed via Mason. Run `:Mason` to browse and install available tools.

## 📦 Installed Tools (via Mason)

- **LSPs**: Language servers for supported languages
- **Formatters**: StyLua (Lua), shfmt (Shell), and language-specific formatters
- **Linters**: shellcheck (Shell), flake8 (Python), and language-specific linters
- **DAP**: Debug Adapter Protocol for debugging
- **Other**: lua-language-server, and more

## 📚 References

- [LazyVim Documentation](https://lazyvim.github.io/)
- [Lazy.nvim GitHub](https://github.com/folke/lazy.nvim)
- [Neovim Documentation](https://neovim.io/doc/user/)

## 📄 License

Apache License 2.0 - See LICENSE file for details

## 🤝 Contributing

Feel free to fork, modify, and customize this configuration for your own needs!
