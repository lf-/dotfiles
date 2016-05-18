#![cfg_attr(feature="clippy", feature(plugin))]
#![cfg_attr(feature="clippy", plugin(clippy))]
#![feature(custom_derive, plugin)]
#![plugin(serde_macros)]

#[macro_use]
extern crate clap;
extern crate requests;
extern crate serde;
extern crate serde_json;

use clap::{App, SubCommand, AppSettings, ArgMatches};
mod crates;

const CARGO: &'static str = "cargo";

#[derive(Debug, PartialEq)]
enum Flag {
    Repository,
    Documentation,
    Downloads,
    Homepage,
    Default,
}

#[derive(Debug)]
struct Report {
    flags: Vec<Flag>,
    verbose: bool,
}

impl Report {
    pub fn new(info: &ArgMatches) -> Self {

        let mut flags: Vec<Flag> = vec![];
        if info.is_present("repository") {
            flags.push(Flag::Repository);
        }
        if info.is_present("documentation") {
            flags.push(Flag::Documentation);
        }
        if info.is_present("downloads") {
            flags.push(Flag::Downloads);
        }
        if info.is_present("homepage") {
            flags.push(Flag::Homepage);
        }

        if flags.is_empty() {
            flags.push(Flag::Default);
        }

        Report {
            flags: flags,
            verbose: info.is_present("verbose"),
        }
    }

    pub fn report(&self, name: &str) {
        if let Some(krate) = query(name).map(|r| r.krate) {
            for flag in &self.flags {
                match *flag {
                    Flag::Repository => krate.print_repository(self.verbose),
                    Flag::Documentation => krate.print_documentation(self.verbose),
                    Flag::Downloads => krate.print_downloads(self.verbose),
                    Flag::Homepage => krate.print_homepage(self.verbose),
                    Flag::Default => reportv(&krate, self.verbose),
                }
            }
        }
    }
}

fn reportv(krate: &crates::Crate, verbose: bool) {
    if verbose {
        println!("{:#}", krate);
    } else {
        println!("{}", krate);
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
        .setting(AppSettings::SubcommandRequiredElseHelp)
        .subcommand(SubCommand::with_name("info")
            .setting(AppSettings::ArgRequiredElseHelp)
            .setting(AppSettings::TrailingVarArg)
            .arg_from_usage("-d, --documentation 'Report documentation URL'")
            .arg_from_usage("-D, --downloads 'Report number of crate downloads'")
            .arg_from_usage("-H, --homepage 'Report home page URL'")
            .arg_from_usage("-r, --repository 'Report crate repository URL'")
            .arg_from_usage("-v, --verbose 'Provides more info'")
            .arg_from_usage("<crate>... 'crate to query'"))
        .get_matches();

    if let Some(info) = matches.subcommand_matches("info") {
        if let Some(crates) = info.values_of("crate") {
            let rep = Report::new(info);
            for krate in crates {
                // debug(&krate);
                rep.report(krate);
            }
        }
    }
}
