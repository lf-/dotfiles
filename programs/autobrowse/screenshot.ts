#!/usr/bin/env -S node
import { tmpdir } from "node:os";
import { join } from "node:path";
import { activePage, connect } from "./common.ts";

const browser = await connect();
const page = await activePage(browser);
const filepath = join(
  tmpdir(),
  `autobrowse-${process.pid}-${Date.now()}.png`,
) as `${string}.png`;
await page.screenshot({ path: filepath });
console.log(filepath);
browser.disconnect();
