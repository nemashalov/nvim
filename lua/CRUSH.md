# CRUSH.md - Neovim Lua Config Guidelines

## Build/Lint/Test
- **Lint**: `stylua .` (formatting)
- **Test single file**: `nvim --headless -u ~/.config/nvim/init.lua -c "DoFile('/path/to/file.lua')"
- **No build step required** (Neovim loads Lua directly)

## Code Style
- **Naming**: snake_case for variables/functions
- **Imports**: Use `require()` with explicit paths (e.g. `require('plugins.lspconfig')`)
- **Formatting**: 2-space indentation, no trailing whitespace
- **Types**: Use Lua 5.1 (Neovim 0.8+ compatible)
- **Error handling**: Use `pcall()` for API calls
- **No semicolons**
- **No global variables** (use `vim`/`require` instead)

## Structure
- Config files in `configs/` loaded via `require()`
- Plugins in `plugins/` with snake_case filenames
- Entry point: `chadrc.lua`