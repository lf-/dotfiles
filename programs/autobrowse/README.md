# Browser automation

This is a bit of code for agents (or humans) to poke at a browser session via simple tools.

Inspiration/starting point: <https://mariozechner.at/posts/2025-11-02-what-if-you-dont-need-mcp/>

Plain Node.js + `puppeteer-core`, driving your **system** Chrome install (no
downloaded browser). The `.ts` scripts run directly on Node 24's type stripping.
Override the browser with `CHROME_PATH` if it isn't found automatically.

## Start Chrome

```bash
./start.ts              # Fresh profile
./start.ts --profile    # Copy your profile (cookies, logins)
```

Start Chrome on `:9222` with remote debugging (profile in `~/.cache/autobrowse`).

## Navigate

```bash
./nav.ts https://example.com
./nav.ts https://example.com --new
```

Navigate current tab or open new tab.

## Evaluate JavaScript

```bash
./eval.ts 'document.title'
./eval.ts 'document.querySelectorAll("a").length'
```

Execute JavaScript in active tab (async context).

## Screenshot

```bash
./screenshot.ts
```

Screenshot current viewport, returns temp file path.
