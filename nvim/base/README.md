This is the base image of nvim devcontainer, based on Arch Linux.

## Pre-installed Environment

- `fish` shell
- build essentials (`base-dev` in archlinux)
- `git`, and `lazygit` for convenient usage from terminal
- `neovim` editor, along side with [`LazyVim`](https://www.lazyvim.org/) setup
  - `ripgrep` & `fd` for `telescope.nvim`
- `node` & `npm`: required for JSON language server

## Bind Mount Permission

Environment variables are available:

- `PUID`
- `PGID`

Only effective when both are set.

