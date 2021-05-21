use regex::Regex;
use std::io::{self, Read};

fn main() {
    let re = Regex::new(r"(?m)(\w+)\(\n\s+([^\s]+),\n\s+\)").unwrap();
    let mut stdin = Vec::new();
    io::stdin().read_to_end(&mut stdin).unwrap();
    let stdin = String::from_utf8(stdin).unwrap();

    let mut prev_len = 0;
    let mut s = stdin;
    while s.len() != prev_len {
        prev_len = s.len();
        s = re.replace_all(&s, "$1($2)").to_string();
    }

    println!("{}", s);
}
