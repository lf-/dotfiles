#![cfg_attr(feature="clippy", feature(plugin))]
#![cfg_attr(feature="clippy", plugin(clippy))]
#![feature(custom_derive, plugin)]
#![plugin(serde_macros)]

#[macro_use]
extern crate clap;
extern crate requests;
extern crate serde;
extern crate serde_json;

use std::fmt;
use clap::{App, SubCommand, AppSettings};
mod crates;

const CARGO: &'static str = "cargo";

fn report(reply: crates::Reply) {
    println!("{}", reply.krate);
}

fn query(krate: &str) -> Option<crates::Reply> {
    let response = requests::get(&format!("http://crates.io/api/v1/crates/{}", krate)).unwrap();
    // println!("{:?}", response.json().unwrap());
    let reply = response.from_json::<crates::Reply>().unwrap();
    println!("{:#?}", reply.krate);
    Some(reply)
}

fn debug<T>(item: &T)
    where T: fmt::Debug
{
    println!("{:#?}", item);
}

fn main() {

    let matches = App::new(CARGO)
                      .bin_name(CARGO)
                      //.author(crate_author!())
                      .version(crate_version!())
                      .about("Querys registry for crates details")
                      .setting(AppSettings::GlobalVersion)
                      .setting(AppSettings::VersionlessSubcommands)
                      .setting(AppSettings::SubcommandRequired)
                      .setting(AppSettings::ArgRequiredElseHelp)
                      .subcommand(SubCommand::with_name("info")
                                      .setting(AppSettings::ArgRequiredElseHelp)
                                      .setting(AppSettings::TrailingVarArg)
                                      .arg_from_usage("<crate>... 'crate to query'"))
                      .get_matches();

    if let Some(crates) = matches.subcommand_matches("info")
                                 .and_then(|m| m.values_of("crate")) {
        for krate in crates {
            debug(&krate);
            query(krate).map(report);
        }
    }
}
