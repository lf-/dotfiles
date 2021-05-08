# idevicesyswowog

this thing is for dealing with ios logs on linux.

this is really useful because `idevicesyslog` is incredibly flaky to start but
fine when running, so restarting it to add filters and such is really bad.

## usage

```
$ mkfifo raw
$ sudo idevicesyslog --no-colors -K > ./raw
$ cargo r -- ./session.sqlite3 ./raw
```

then boop the database with like sqlitebrowser or something. you can add regex
ignores into the `skip_filters` table, which will be applied to the `whomst`
field (executable name/lib name/pid) and the lines not emit. this can be done
at runtime.

you can also stop `idevicesyswowog` without stopping `idevicesyslog` because of
the fifo, which is very good for development as you don't have to tempt fate
every time.
