# VIM Plugin Usage & Key Mappings

This guide provides a detailed look at how to use the installed plugins and custom key mappings. Note that the **Leader key** is mapped to `Backspace`.

## 1. File Navigation & Search

### NERDTree (File Explorer)
* `Ctrl + n` or `Backspace + e`: Toggles the NERDTree sidebar.
* `o`: Opens the selected file in the current window.
* `i` / `s`: Opens the file in a horizontal / vertical split.
* Helps visualize project structure and manage files directly within Vim.

### fzf.vim (Fuzzy Finder)
* `Ctrl + p`: Quick file search by name.
* `Ctrl + f`: Full-text search across the project using the `Ag` engine.
* Much faster than manual navigation for large projects.

---

## 2. Code Editing Helpers

### vim-commentary
* `gcc`: Toggles comment for the current line.
* `gc`: (Visual Mode) Toggles comment for the entire selection.
* `Backspace + /`: Custom shortcut to quickly toggle comments.

### vim-surround
* `ds"`: Delete surrounding double quotes.
* `cs"'`: Change surrounding double quotes to single quotes.
* `ysiw)`: Surround inner word with parentheses.
* Essential for wrapping text in tags or quotes without manual typing.

### indentLine & Gitsigns
* **indentLine**: Displays vertical bars (┊) to show indentation levels.
* **gitsigns**: Shows real-time Git change indicators (+, -, ~) in the gutter.

---

## 3. Terminal & Development Tools

### vim-floaterm
* `F12` or `Backspace + t`: Toggles a floating terminal window.
* Supports window navigation via `Ctrl + Arrows` even in terminal mode.

### ALE (Linter)
* Automatically checks for syntax errors and coding style issues.
* Configured with `prettier` and `eslint` for JavaScript.

### Taglist
* `F8` or `Backspace + y`: Toggles a sidebar listing functions, variables, and classes.
* Powered by `universal-ctags` for fast and accurate code indexing.

---

## 4. General & Advanced Mappings

| Key | Action |
| :--- | :--- |
| `Ctrl + s` | Save current file (Works in Normal & Insert mode). |
| `Ctrl + c` | Copy visual selection to system clipboard. |
| `F5` | Insert current system date and time. |
| `F11` | Toggle 'paste' mode. |
| `Ctrl + Arrows` | Move focus between split windows (Works in Terminal mode). |
| `Backspace + w` | Remove trailing whitespaces in the current line. |
| `Backspace + n / p` | Switch to Next / Previous buffer. |
| `Backspace + d` | Close (Delete) current buffer. |
| `Backspace + a` | Select all text in the current buffer. |
| `Backspace + r` | Search and replace the word under cursor globally. |
| `Backspace + l` | Toggle relative line numbers. |
| `Ctrl + l` | Clear search highlighting. |
| `Y` | Yank from cursor position to the end of the line. |
