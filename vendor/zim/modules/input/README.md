input
=====

Applies correct bindkeys for input events.

Without this module, you may experience oddities in how Zsh interprets input.
For example, pressing LEFT and then the DELETE key may capitalize characters
rather than delete them.

Also enables smart URL-pasting, which prevents the user from having to manually
escape URLs.

The following key bindings are set in the main keymap:

  * BACKSPACE erases the character under the cursor.
  * DELETE erases the character behind the cursor.
  * INSERT toggles between overwrite and insert mode.
  * HOME moves to the beginning of the current line or, if already there, of the
    previous line.
  * END moves to the end of the current line or, if already there, of the next
    line.
  * PAGE UP moves up a line or, if already at the top, to the previous history
    event.
  * PAGE DOWN moves down a line or, if already at the bottom, to the next
    history event.
  * LEFT moves backward one character.
  * RIGHT moves forward one character.
  * CTRL-LEFT moves to the beginning of the previous word.
  * CTRL-RIGHT moves to the beginning of the next word.
  * SHIFT-TAB performs menu completion moving to the previous completion rather
    than the next.
  * CTRL-X CTRL-E edits the command line with an external editor.

Settings
--------

This module also provides double-dot parent directory expansion, which will turn
a `.` typed after `..` into `/..` (e.g. `....` into `../../..`) so you don't
need to type too many slashes and dots. It's disabled by default and can be
enabled by adding:

    zstyle ':zim:input' double-dot-expand yes

to your `~/.zshrc` before where the module is initialized.
