#!/usr/bin/env -S node
import { activePage, connect } from "./common.ts";

const code = process.argv[2];
if (!code) {
  console.error("usage: ./eval.ts '<javascript>'");
  process.exit(1);
}

const browser = await connect();
const page = await activePage(browser);
// Wrap the snippet in an async function so both expressions and awaited
// statements work.
const result = await page.evaluate((c) => {
  const AsyncFunction = (async () => {}).constructor as any;
  return new AsyncFunction(`return (${c})`)();
}, code);
console.log(
  typeof result === "string" ? result : JSON.stringify(result, null, 2),
);
browser.disconnect();
