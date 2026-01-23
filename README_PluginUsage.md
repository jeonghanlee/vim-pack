# VIM Plugin Usage & Key Mappings

This guide provides a detailed look at how to use the installed plugins and custom key mappings. Note that the **Leader key** is mapped to `Backspace`.

## 1. File Navigation & Search

### NERDTree (File Explorer)
* `Ctrl + n`: Toggles the NERDTree sidebar.
* `o`: Opens the selected file in the current window.
* `i` / `s`: Opens the file in a horizontal / vertical split.
* The explorer helps you visualize the project structure and manage files (create/delete/rename) directly within Vim.

### fzf.vim (Fuzzy Finder)
* `Ctrl + p`: Quick file search. It filters files by name as you type.
* `Ctrl + f`: Full-text search across the project. It uses the `Ag` (Silver Searcher) engine for near-instant results.
* These tools are much faster than manual navigation for large projects.

---

## 2. Code Editing Helpers

### vim-commentary
* `gcc`: Toggles comment for the current line.
* `gc`: (Visual Mode) Toggles comment for the entire selection.
* `Backspace + /`: Custom shortcut to quickly comment out code blocks.

### vim-surround
* `ds"`: Delete surrounding double quotes.
* `cs"'`: Change surrounding double quotes to single quotes.
* `ysiw)`: Yank surround inner word with parentheses.
* This plugin is essential for wrapping text in tags, brackets, or quotes without manual typing.

### indentLine & Gitsigns
* indentLine: Automatically displays vertical bars (┊) to show indentation levels, making nested code (like loops or functions) easier to read.
* gitsigns: Shows `+` (added), `-` (deleted), or `~` (modified) symbols in the left margin to indicate unsaved Git changes in real-time.

---

## 3. Terminal & Development Tools

### vim-floaterm
* `F12`: Toggles a floating terminal window on top of your code.
* Perfect for running quick shell commands, compilers, or git commands without losing your place in the file.

### ALE (Linter)
* Automatically checks for syntax errors and coding style issues as you type or save.
* Indicators appear in the left gutter; you can hover or use commands to see the full error message.

### Taglist
* `F8`: Toggles a sidebar that lists all functions, variables, and classes in the current file.
* Useful for jumping between different parts of a long source file quickly.

---

## 4. General Custom Mappings

| Key | Action |
| :--- | :--- |
| `Ctrl + s` | Save the current file. |
| `Ctrl + c` | Copy the visual selection to the system clipboard. |
| `F5` | Insert the current system date and time. |
| `F11` | Toggle 'paste' mode (prevents broken indentation when pasting from outside). |
| `Ctrl + Arrows` | Move focus between split windows. |
| `Backspace + w` | Remove all trailing whitespaces from the current line. |
| `Ctrl + l` | Clear search highlighting after you are done searching. |
| `Y` | Yank from the current cursor position to the end of the line. |
