import { existsSync } from "node:fs";
import { homedir, platform } from "node:os";
import { join } from "node:path";
import puppeteer from "puppeteer-core";
import type { Browser, Page } from "puppeteer-core";

export const PORT = 9222;
export const BROWSER_URL = `http://localhost:${PORT}`;
export const USER_DATA_DIR = join(homedir(), ".cache", "autobrowse");

// Locate a system-installed Chrome/Chromium. We deliberately do NOT use a
// puppeteer-managed download; CHROME_PATH overrides the search.
export function findChrome(): string {
  const candidates: string[] = [];
  if (process.env.CHROME_PATH) candidates.push(process.env.CHROME_PATH);
  switch (platform()) {
    case "darwin":
      candidates.push(
        "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome",
        "/Applications/Chromium.app/Contents/MacOS/Chromium",
        "/Applications/Brave Browser.app/Contents/MacOS/Brave Browser",
        "/Applications/Microsoft Edge.app/Contents/MacOS/Microsoft Edge",
      );
      break;
    case "linux":
      candidates.push(
        "/usr/bin/google-chrome",
        "/usr/bin/google-chrome-stable",
        "/usr/bin/chromium",
        "/usr/bin/chromium-browser",
      );
      break;
  }
  const found = candidates.find((p) => existsSync(p));
  if (!found) {
    throw new Error(
      "Could not find a system Chrome/Chromium. Set CHROME_PATH to its executable.",
    );
  }
  return found;
}

// The default Chrome profile directory, used by `start.ts --profile`.
export function systemProfileDir(): string {
  switch (platform()) {
    case "darwin":
      return join(
        homedir(),
        "Library",
        "Application Support",
        "Google",
        "Chrome",
      );
    case "linux":
      return join(homedir(), ".config", "google-chrome");
    default:
      throw new Error(`Unsupported platform for --profile: ${platform()}`);
  }
}

// A single, non-retrying connection attempt. Returns null if nothing is
// listening on the debug port yet.
export async function tryConnect(): Promise<Browser | null> {
  try {
    return await puppeteer.connect({
      browserURL: BROWSER_URL,
      defaultViewport: null,
    });
  } catch {
    return null;
  }
}

// Connect to an already-running Chrome, polling until it is ready.
export async function connect(retries = 30, delayMs = 500): Promise<Browser> {
  for (let i = 0; i < retries; i++) {
    const browser = await tryConnect();
    if (browser) return browser;
    await sleep(delayMs);
  }
  throw new Error(
    `Could not connect to Chrome on ${BROWSER_URL} after ${retries} tries. Run ./start.ts first.`,
  );
}

// The active tab is the most recently opened page.
export async function activePage(browser: Browser): Promise<Page> {
  const pages = await browser.pages();
  const page = pages.at(-1);
  if (!page) throw new Error("No open tabs.");
  return page;
}

export function sleep(ms: number): Promise<void> {
  return new Promise((resolve) => setTimeout(resolve, ms));
}
