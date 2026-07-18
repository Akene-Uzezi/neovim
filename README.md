# 🚀 Neovim Configuration

A customized Neovim configuration built on [LazyVim](https://github.com/LazyVim/LazyVim), featuring a curated selection of plugins and language support.

## ✨ Features

This configuration is built with **Lua** and includes:

- **Plugin Management**: [Lazy.nvim](https://github.com/folke/lazy.nvim) for fast, modern plugin management
- **UI Enhancements**: Dashboard and NeoTree for navigation
- **Fuzzy Finder**: Telescope for file finding and searching
- **Language Support**: Pre-configured for multiple languages:
  - 🔗 Git support
  - 🐹 Go
  - 🐍 Python
  - 🦀 Rust
  - 📊 SQL
  - 📘 TypeScript/JavaScript
- **Code Formatting**: StyLua for Lua code formatting
- **Development Tools**: Mason for LSP and tool management

## 📁 Project Structure

```
├── init.lua              # Entry point - bootstraps Lazy.nvim
├── lua/
│   ├── config/          # Core configuration
│   │   ├── lazy.lua     # Lazy.nvim setup and plugin specifications
│   │   ├── options.lua  # Neovim options
│   │   ├── keymaps.lua  # Custom key mappings
│   │   └── autocmds.lua # Autocommands
│   └── plugins/         # Plugin configurations
│       ├── dashboard.lua   # Dashboard setup
│       ├── neotree.lua     # File explorer
│       ├── telescope.lua   # Fuzzy finder
│       └── example.lua     # Example plugin configurations (disabled by default)
├── lazy-lock.json       # Dependency lock file
├── lazyvim.json         # LazyVim configuration
└── stylua.toml          # StyLua formatting configuration
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
git clone https://github.com/Akene-Uzezi/neovim ~/.config/nvim

# Windows (PowerShell)
git clone https://github.com/Akene-Uzezi/neovim $env:APPDATA\nvim
```

2. Start Neovim - Lazy.nvim will automatically bootstrap itself and install all plugins

```bash
nvim
```

3. Wait for all plugins to install. You can check installation progress with `:Lazy`

## ⌨️ Key Features

### Custom Keybindings

- **Insert Mode**: `jk` exits insert mode (custom binding in `init.lua`)
- Refer to `lua/config/keymaps.lua` for additional keybindings

### Plugin Highlights

- **Dashboard**: Quick start screen for Neovim
- **NeoTree**: File explorer for project navigation
- **Telescope**: Powerful fuzzy finder for files, text, and more
- **Mason**: Package manager for LSPs, formatters, and linters
- **LazyVim Extras**: Language-specific plugins and configurations

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

## 📦 Installed Tools (via Mason)

- stylua - Lua formatter
- shellcheck - Shell script linter
- shfmt - Shell script formatter
- flake8 - Python linter

## 📚 References

- [LazyVim Documentation](https://lazyvim.github.io/)
- [Lazy.nvim GitHub](https://github.com/folke/lazy.nvim)
- [Neovim Documentation](https://neovim.io/doc/user/)

## 📄 License

Apache License 2.0 - See LICENSE file for details

## 🤝 Contributing

Feel free to fork, modify, and customize this configuration for your own needs!
