# Custom Treesitter Parsers

These parsers are not in the nvim-treesitter registry and must be installed manually.
The compiled `.so` files live in `~/.local/share/nvim/site/parser/` (safe from lazy.nvim updates).
Query files and ftdetect are gitignored and must also be copied manually.

---

## CFML (ColdFusion)

**Repo:** https://github.com/cfmleditor/tree-sitter-cfml

Four parsers from a single monorepo: `cfml` (.cfc), `cfhtml` (.cfm/.cfml), `cfscript` (.cfs), `cfquery` (SQL injected inside cfhtml).

### Install parsers

```bash
git clone https://github.com/cfmleditor/tree-sitter-cfml /tmp/tree-sitter-cfml

for lang in cfml cfhtml cfscript cfquery; do
  cc -shared -fPIC -o /tmp/${lang}.so \
    -I/tmp/tree-sitter-cfml/${lang}/src \
    /tmp/tree-sitter-cfml/${lang}/src/parser.c \
    /tmp/tree-sitter-cfml/${lang}/src/scanner.c
done

cp /tmp/cfml.so /tmp/cfhtml.so /tmp/cfscript.so /tmp/cfquery.so \
  ~/.local/share/nvim/site/parser/
```

### Install queries

```bash
for lang in cfml cfhtml cfscript cfquery; do
  cp -r /tmp/tree-sitter-cfml/${lang}/queries \
    ~/.config/nvim/queries/${lang}
done
```

### Install ftdetect

```bash
cp /path/to/dotfiles/.config/nvim/ftdetect/cfml.lua ~/.config/nvim/ftdetect/cfml.lua
```

Or just symlink your dotfiles as normal — `ftdetect/cfml.lua` is tracked in the repo.

### Filetype mapping

| Extension | Parser   |
|-----------|----------|
| `.cfc`    | `cfml`   |
| `.cfm`    | `cfhtml` |
| `.cfml`   | `cfhtml` |
| `.cfs`    | `cfscript` |
