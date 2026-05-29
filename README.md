# neovim-config

A minimal, modern Neovim configuration built for Neovim 0.12+. Uses the built-in `vim.pack` package manager.

## Requirements

- Neovim 0.12 or later
- Git
- A [Nerd Font](https://www.nerdfonts.com/) set in your terminal (for icons)
- Node.js (required by pyright)
- ripgrep (required for live grep)

### Installing dependencies

**macOS (Homebrew):**
```bash
brew install neovim node ripgrep
```

**Linux (apt):**
```bash
sudo apt install neovim nodejs ripgrep
```

**Linux (pacman):**
```bash
sudo pacman -S neovim nodejs ripgrep
```

Language servers (`lua_ls` and `pyright`) can be installed inside Neovim via `:MasonInstall lua-language-server pyright` after setup.

## Installation

> **Back up your existing config first:**
> ```bash
> mv ~/.config/nvim ~/.config/nvim.bak
> ```

Clone the repo into your Neovim config directory:

```bash
git clone https://github.com/domino-jockey/neovim-config ~/.config/nvim
```

Open Neovim — plugins will be fetched automatically on first launch via `vim.pack`.

## Plugins

| Plugin | Purpose |
|---|---|
| [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) | Colorscheme (transparent background) |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Statusline |
| [mini.nvim](https://github.com/nvim-mini/mini.nvim) | File explorer, fuzzy picker, notifications, autopairs |
| [snacks.nvim](https://github.com/folke/snacks.nvim) | Indent guides, smooth scroll |
| [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | File icons |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP configuration |
| [mason.nvim](https://github.com/mason-org/mason.nvim) | LSP/tool installer |
| [blink.cmp](https://github.com/saghen/blink.cmp) | Autocompletion |

## LSP

Configured language servers:

- `lua_ls` — Lua (with `vim` global recognized)
- `pyright` — Python

Install servers via `:MasonInstall` or manually. Enable additional servers in `lua/config/lsp.lua`.

## Keymaps

Leader key: `Space`

| Keymap | Action |
|---|---|
| `<leader>w` | Save file |
| `<leader>q` | Quit all |
| `<leader>r` | Restart Neovim |
| `<leader>u` | Toggle undotree |
| `<leader>ya` | Yank all lines to clipboard |
| `<leader>e` | Open file explorer (mini.files) |
| `<leader>-` | Open mini.files at current file |
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fh` | Search help docs |
| `<leader>fk` | Search keymaps |
| `J` / `K` (visual) | Move selected lines up / down |

## Structure

```
~/.config/nvim/
├── init.lua           # Entry point
├── lua/
│   ├── pack.lua       # Plugin declarations (vim.pack)
│   ├── config/
│   │   ├── options.lua
│   │   ├── keybinds.lua
│   │   ├── autocmds.lua
│   │   ├── lsp.lua
│   │   └── treesitter.lua
│   └── plugins/
│       ├── tokyonight.lua
│       ├── lualine.lua
│       ├── mini.lua
│       ├── snacks.lua
│       └── blink.lua
```

## License

MIT
