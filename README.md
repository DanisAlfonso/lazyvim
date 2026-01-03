# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## German Writing Support

This configuration includes special support for practicing German writing with basic level skills:

- German spell checking is enabled for text files (`.txt`, `.md`)
- Grammar checking using the LTeX language server
- AI assistance through Copilot for writing suggestions
- Special keybindings for spell correction

### Keybindings for German Writing

- `<leader>z=`: Show spelling suggestions for the word under cursor
- `<leader>zg`: Add word to German dictionary
- `<leader>zug`: Remove word from German dictionary
- `<leader>zG`: Add word to German dictionary (current file only)
- `<leader>zuG`: Remove word from German dictionary (current file only)

### Usage Tips for German Practice

1. When writing German text, make sure you're in a `.txt` or `.md` file to get spell checking
2. Use `<leader>z=` to get suggestions for misspelled German words
3. Use Copilot (if enabled) to get AI writing suggestions by typing in German and pressing `<Tab>`
4. The LTeX language server will provide grammar and style suggestions specific to German
