# GRE Workshops

Seven live-session decks built with [Slidev](https://sli.dev): Markdown slides, KaTeX math, click-by-click reveals, and live "plug in the class's number" panels.

## Run locally
```
npm install
npx slidev picking-numbers.md      # live preview with hot reload
npm run build                      # builds every deck into dist/
```

## Deploy on Vercel
Import this repo in Vercel. The included `vercel.json` sets the build (`npm run build`) and output (`dist`), so no settings are needed. Each deck lives at `/<deck-name>/`, with a landing page at `/`.

## Presenting
- Arrow keys or space step through reveals; **F** for fullscreen.
- Open `<deck-url>/#/presenter` on your own screen for speaker notes, the next slide and a timer. Share only the main window in Zoom.
- Live panels: click the input, type the number from chat (fractions like `1/2` work). Values that break the problem's rules are flagged.

## Editing
Each deck is one Markdown file (`picking-numbers.md`, etc.). Slides are separated by `---`; speaker notes are in `<!-- -->` at the end of a slide. Math uses `<M t="\dfrac{1}{2}" s="40"/>`; `v-click` on an element makes it a click reveal.
Shared look: `style.css`. Components: `components/M.vue` (math) and `components/PlugIn.vue` (live panel).
