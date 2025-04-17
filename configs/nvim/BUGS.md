- Random exception due to ?? language servers blowing up ??:

```
[coc.nvim]: UnhandledRejection: Cannot call write after a stream was destroyed
Error [ERR_STREAM_DESTROYED]: Cannot call write after a stream was destroyed
    at _write (node:internal/streams/writable:491:11)
    at Writable.write (node:internal/streams/writable:510:10)
    at /home/jade/.local/share/nvim/site/pack/packer/start/coc.nvim/build/index.js:21093:25
    at new Promise (<anonymous>)
    at WritableStreamWrapper.write (/home/jade/.local/share/nvim/site/pack/packer/start/coc.nvim/build/index.js:21
084:16)
    at StreamMessageWriter2.doWrite (/home/jade/.local/share/nvim/site/pack/packer/start/coc.nvim/build/index.js:1
9513:31)
    at /home/jade/.local/share/nvim/site/pack/packer/start/coc.nvim/build/index.js:19504:25
```

- Terrible error messages from nvim-treesitter on query load problems: https://github.com/nvim-treesitter/nvim-treesitter/pull/7818

- "not enough room" errors in goto references from coc if the window is too
  small
