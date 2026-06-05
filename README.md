# CV

My curriculum vitae.

## Files

- **[index.html](index.html)** - Main CV (HTML)
- **[cv-accessible.html](cv-accessible.html)** - Accessible version (HTML)
- **dist/curriculum-vitae-standard.pdf** - PDF version
- **dist/curriculum-vitae-bionic.pdf** - PDF with bionic reading

## Deployment

[Live site](https://alfieatkinson.github.io/cv/)

## Build

```bash
./build.sh
```

Generates both standard and bionic reading versions of the CV as PDFs to `dist/`.

## Auto-build on save

Run this while editing the Typst source to rebuild automatically whenever you save the document:

```bash
npm run watch
```

VS Code also has a task configured in `.vscode/tasks.json` to start that watcher for you.
