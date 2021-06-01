# pwaygwoumd

rust playground but make it locally

## usage

the main code to this is in [../bin/cargo-play](../bin/cargo-play). you invoke
that, then that will call your editor. From a shell within your editor, you can
then do:
* `upload` which uses the `gh` github cli to gist the file and dumps a
  playground link and the gist link to the terminal
* `delete` which deletes the temporary project.
