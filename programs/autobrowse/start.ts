#!/usr/bin/env -S node
import { execFileSync, spawn } from "node:child_process";
import { mkdirSync } from "node:fs";
import {
  BROWSER_URL,
  PORT,
  USER_DATA_DIR,
  connect,
  findChrome,
  systemProfileDir,
  tryConnect,
} from "./common.ts";

const copyProfile = process.argv.includes("--profile");

// Reuse an existing debug session rather than launching a second one.
const existing = await tryConnect();
if (existing) {
  existing.disconnect();
  console.error(`Chrome already running on ${BROWSER_URL}`);
  process.exit(0);
}

mkdirSync(USER_DATA_DIR, { recursive: true });

if (copyProfile) {
  console.error(`Copying profile from ${systemProfileDir()} ...`);
  execFileSync(
    "rsync",
    ["-a", "--delete", `${systemProfileDir()}/`, `${USER_DATA_DIR}/`],
    { stdio: "inherit" },
  );
}

const chrome = findChrome();
const child = spawn(
  chrome,
  [
    `--remote-debugging-port=${PORT}`,
    `--user-data-dir=${USER_DATA_DIR}`,
    "--no-first-run",
    "--no-default-browser-check",
  ],
  { detached: true, stdio: "ignore" },
);
child.unref();

// Wait until it is actually accepting CDP connections.
const browser = await connect();
browser.disconnect();
console.error(`Chrome running on ${BROWSER_URL} (profile: ${USER_DATA_DIR})`);
