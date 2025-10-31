# CRUSH.md

## Commands
- **Lint**: `stylua --check .` (Lua formatting check)
- **Format**: `stylua .` (Lua formatting)
- **Test**: `lua -e "require('tests/my_test')"` (run specific test file)
- **Build**: Not applicable (Neovim config)

## Code Style
- **Formatting**: Use `.stylua.toml` rules
- **Naming**: snake_case for functions/variables, PascalCase for module names
- **Imports**: `require('module.path')` with LuaRocks modules
- **Types**: Use Lua's `--@type` annotations where needed
- **Error Handling**: Use `pcall` for safe function calls
- **Conventions**: Follow Neovim plugin best practices (see `lua/plugins/`)

## Cursor/Copilot Rules
- No specific rules found in `.cursor/` or `.github/`