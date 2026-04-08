#!/usr/bin/env -S node
import { activePage, connect } from "./common.ts";

const args = process.argv.slice(2);
const newTab = args.includes("--new");
const url = args.find((a) => !a.startsWith("--"));
if (!url) {
  console.error("usage: ./nav.ts <url> [--new]");
  process.exit(1);
}

const browser = await connect();
const page = newTab ? await browser.newPage() : await activePage(browser);
await page.goto(url, { waitUntil: "domcontentloaded" });
console.log(await page.title());
browser.disconnect();
