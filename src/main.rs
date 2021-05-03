use std::{
    fs,
    io::{BufRead, BufReader},
    path::Path,
};

use lazy_static::lazy_static;

use rusqlite::params;
use rusqlite::Transaction;
use rusqlite::TransactionBehavior;

use regex::Regex;
use rusqlite::functions::FunctionFlags;
use rusqlite::{Connection, Error, Result};
use std::sync::Arc;
type BoxError = Box<dyn std::error::Error + Send + Sync + 'static>;

fn add_regexp_function(db: &Connection) -> Result<()> {
    db.create_scalar_function(
        "regexp",
        2,
        FunctionFlags::SQLITE_UTF8 | FunctionFlags::SQLITE_DETERMINISTIC,
        move |ctx| {
            assert_eq!(ctx.len(), 2, "called with unexpected number of arguments");
            let regexp: Arc<Regex> = ctx.get_or_create_aux(0, |vr| -> Result<_, BoxError> {
                Ok(Regex::new(vr.as_str()?)?)
            })?;
            let is_match = {
                let text = ctx
                    .get_raw(1)
                    .as_str()
                    .map_err(|e| Error::UserFunctionError(e.into()))?;

                regexp.is_match(text)
            };

            Ok(is_match)
        },
    )
}

fn connect(p: &Path) -> rusqlite::Connection {
    let conn = rusqlite::Connection::open(p).unwrap();
    conn.execute(
        "create table if not exists skip_filters (id integer primary key, svcname string)",
        params![],
    )
    .unwrap();

    conn.execute(
        "create table if not exists messages (id integer primary key, date string, whomst string, level string, message string)",
        params![],
    )
    .unwrap();

    add_regexp_function(&conn).unwrap();

    conn
}

struct LogRecord {
    date: String,
    whomst: String,
    level: String,
    message: String,
}

struct Session {
    conn: rusqlite::Connection,
}

impl Session {
    fn new(p: impl AsRef<Path>) -> Session {
        Session {
            conn: connect(p.as_ref()),
        }
    }

    fn log(&mut self, record: &LogRecord) {
        let trans = Transaction::new(&mut self.conn, TransactionBehavior::Immediate).unwrap();
        let should_ignore: u32 = trans
            .query_row(
                "select count(*) from skip_filters where regexp(svcname, ?)",
                params![record.whomst],
                |row| row.get(0),
            )
            .unwrap();

        if should_ignore == 0 {
            trans
                .execute(
                    "insert into messages (date, whomst, level, message) values (?, ?, ?, ?)",
                    params![record.date, record.whomst, record.level, record.message],
                )
                .unwrap();
        }

        trans.commit().unwrap();
    }
}

lazy_static! {
    static ref LOG_RECORD_RE: Regex =
        Regex::new(r"(\w+\s+\d+\s+\d+:\d+:\d+)\s+(\S+)\s+([^\s:]+):\s+(.*)").unwrap();
}

impl LogRecord {
    fn parse(s: &str) -> Option<LogRecord> {
        let matches = LOG_RECORD_RE.captures(s)?;
        Some(LogRecord {
            date: matches.get(1)?.as_str().to_string(),
            whomst: matches.get(2)?.as_str().to_string(),
            level: matches.get(3)?.as_str().to_string(),
            message: matches.get(4)?.as_str().to_string(),
        })
    }
}

fn main() {
    let mut args = std::env::args().skip(1);
    let sess_path = args.next().expect("need a session path");
    let fifo_path = args.next().expect("need a fifo path");

    let mut sess = Session::new(Path::new(&sess_path));

    let f = fs::OpenOptions::new()
        .read(true)
        .write(false)
        .open(fifo_path)
        .expect("open");

    let mut f = BufReader::new(f);
    let mut s = String::new();

    while let Ok(v) = f.read_line(&mut s) {
        if v == 0 {
            println!("done");
            break;
        }

        let rec = LogRecord::parse(&s);
        if rec.is_none() {
            println!("warn: could not parse line {:?}", &s);
            continue;
        }
        let rec = rec.unwrap();

        sess.log(&rec);

        s.clear();
    }

    println!("start");
}
