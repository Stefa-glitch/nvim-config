# Neovim configuration (this repo)

Minimal, lazy.nvim-based Neovim configuration with a curated set of plugins and sensible defaults.

## Quick install

1. Clone this repo into your Neovim config directory (example):

```sh
git clone https://github.com/Stefa-glitch/nvim-config.git ~/.config/nvim
```

2. Start Neovim. The config bootstraps `lazy.nvim` and will install plugins automatically. To force install or update plugins from inside Neovim run `:Lazy sync`.

## Features

- Treesitter for improved syntax highlighting and indentation (configured in `lua/plugins/treesitter.lua`).
- Neo-tree file explorer (see `lua/plugins/neotree.lua`).
- Telescope fuzzy finder (see `lua/plugins/telescope.lua`).
- OneDark colorscheme (see `lua/plugins/onedark.lua`).
- Colorizer to highlight color codes inline (see `lua/plugins/colorizer.lua`).
- Staline statusline (see `lua/plugins/staline.lua`).
- Noice for better command-line / message UX (see `lua/plugins/noice.lua`).
- Snacks utilities and pickers (see `lua/plugins/Snacks.lua`).

## Key bindings

Primary keymaps are defined in `init.lua`. Notable mappings (may be customized):

- `<leader>e` — open Neo-tree file explorer.
- `<C-f>` — Telescope find files.
- `<leader>l` — open Lazy UI (plugin manager).

(Replace `<leader>` with your configured leader key, default is `\`.)

## Editing or adding plugins

Plugin specs live in `lua/plugins/`. Each file returns a `lazy.nvim`-compatible plugin spec. After editing plugin files, reload Neovim and run `:Lazy sync` or use the Lazy UI (`<leader>l`).

Files of interest:

- `init.lua` — main entrypoint and keymaps
- `lazy-lock.json` — pinned plugin versions
- `lua/plugins/treesitter.lua`
- `lua/plugins/telescope.lua`
- `lua/plugins/staline.lua`
- `lua/plugins/onedark.lua`
- `lua/plugins/noice.lua`
- `lua/plugins/neotree.lua`
- `lua/plugins/colorizer.lua`
- `lua/plugins/Snacks.lua`

## Troubleshooting & tips

- Run `:checkhealth` in Neovim to surface common issues.
- If Treesitter parsers are missing or outdated, run `:TSUpdate`.
- If a plugin misbehaves, try `:Lazy clean` then `:Lazy sync`.

## Contributing

PRs and suggestions welcome. If adding plugins, prefer minimal, well-maintained plugins and include a short rationale in the PR description.

## License

This repo follows the license in the project root (if present). If you want a specific license added, open an issue or PR.

---

Happy hacking — enjoy your Neovim setup!
