import assert from "node:assert/strict";
import { test } from "node:test";
import { mkdtempSync, writeFileSync, readFileSync, mkdirSync } from "node:fs";
import { tmpdir } from "node:os";
import { join, resolve } from "node:path";
import { spawnSync } from "node:child_process";

const snapshot = resolve("calcit.cirru");
function filter(words) {
  // Never overwrite a user's downloaded word list in the project target folder.
  const cwd = mkdtempSync(join(tmpdir(), "pick-name-test-"));
  mkdirSync(join(cwd, "target"));
  writeFileSync(join(cwd, "target/words_alpha.txt"), words);
  const result = spawnSync("calcit", [snapshot], { cwd, encoding: "utf8" });
  assert.equal(result.status, 0, result.stderr);
  assert.equal(readFileSync(join(cwd, "target/words_alpha.txt"), "utf8"), words);
  return result.stdout.trim().split(/\r?\n/).filter((line) => line !== "Started." && line !== "");
}

test("requires i, p, c in order and fewer than seven characters", () => {
  assert.deepEqual(filter("lipca\nipc\nipcalx\nipcalxx\napple\nicp\ncpi\nip\n"), ["lipca", "ipc", "ipcalx"]);
});
test("preserves matching dictionary order and handles CRLF", () => {
  assert.deepEqual(filter(" ipc\r\nlipca\r\nipc\r\n"), ["ipc", "lipca", "ipc"]);
});
test("empty dictionaries and dictionaries without matches return no words", () => {
  assert.deepEqual(filter(""), []);
  assert.deepEqual(filter("apple\nbanana\n"), []);
});
