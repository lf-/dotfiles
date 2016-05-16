#![cfg_attr(feature="clippy", feature(plugin))]
#![cfg_attr(feature="clippy", plugin(clippy))]
#![feature(custom_derive, plugin)]
#![plugin(serde_macros)]

#[macro_use]
extern crate clap;
extern crate requests;
extern crate serde;
extern crate serde_json;

use clap::{App, SubCommand, AppSettings};
mod crates;

const CARGO: &'static str = "cargo";

fn reportv(reply: crates::Reply, verbose: bool) {
    if verbose {
        println!("{:#}", reply.krate);
    } else {
        println!("{}", reply.krate);
    }
}

fn query(krate: &str) -> Option<crates::Reply> {
    let response = requests::get(&format!("http://crates.io/api/v1/crates/{}", krate)).unwrap();
    // println!("{:?}", response.json().unwrap());
    response.from_json::<crates::Reply>()
}

// use std::fmt;
// fn debug<T>(item: &T)
//     where T: fmt::Debug
// {
//     println!("{:#?}", item);
// }

fn main() {

    let matches = App::new(CARGO)
                      .bin_name(CARGO)
                      .author(crate_authors!())
                      .version(crate_version!())
                      .about("Queries registry for crates details")
                      .setting(AppSettings::GlobalVersion)
                      .setting(AppSettings::VersionlessSubcommands)
                      .setting(AppSettings::SubcommandRequired)
                      .setting(AppSettings::ArgRequiredElseHelp)
                      .subcommand(SubCommand::with_name("info")
                                      .setting(AppSettings::ArgRequiredElseHelp)
                                      .setting(AppSettings::TrailingVarArg)
                                      .arg_from_usage("-v, --verbose 'Provides more info'")
                                      .arg_from_usage("<crate>... 'crate to query'"))
                      .get_matches();

    if let Some(info) = matches.subcommand_matches("info") {
        let report = |k| reportv(k, info.is_present("verbose"));
        if let Some(crates) = info.values_of("crate") {
            for krate in crates {
                // debug(&krate);
                query(krate).map(&report);
            }
        }
    }
}
