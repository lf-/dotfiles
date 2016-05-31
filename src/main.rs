#![cfg_attr(feature="clippy", feature(plugin))]
#![cfg_attr(feature="clippy", plugin(clippy))]
#![feature(custom_derive, plugin)]
#![plugin(serde_macros)]

#[macro_use]
extern crate clap;
extern crate requests;
extern crate serde;
extern crate serde_json;

mod crates;

use clap::{App, SubCommand, Arg, AppSettings, ArgMatches};
use serde_json::ser::to_string_pretty;

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
    json: bool,
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
            json: info.is_present("json"),
        }
    }

    pub fn report(&self, name: &str) {
        let response = query(name);
        if self.json {
            self.report_json(&response);
        } else {
            if let Some(krate) = get_crate(&response) {
                self.report_crate(&krate);
            }
        }
    }

    pub fn report_json(&self, response: &requests::Response) {
        if self.verbose {
            if let Some(Ok(json)) = response.from_json::<crates::Reply>()
                .as_ref()
                .map(to_string_pretty) {
                println!("{}", json);
            }
        } else {
            if let Some(json) = response.text() {
                println!("{}", json);
            }
        }
    }

    pub fn report_crate(&self, krate: &crates::Crate) {
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

fn reportv(krate: &crates::Crate, verbose: bool) {
    if verbose {
        println!("{:#}", krate);
    } else {
        println!("{}", krate);
    }
}

fn query(krate: &str) -> requests::Response {
    requests::get(&format!("http://crates.io/api/v1/crates/{}", krate)).unwrap()
    // println!("{:?}", response.json().unwrap());
    // response.from_json::<crates::Reply>()
}

fn get_crate(response: &requests::Response) -> Option<crates::Crate> {
    response.from_json::<crates::Reply>().map(|r| r.krate)
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
        .about("Query crates.io registry for crates details")
        .setting(AppSettings::GlobalVersion)
        .setting(AppSettings::VersionlessSubcommands)
        .setting(AppSettings::SubcommandRequiredElseHelp)
        .subcommand(SubCommand::with_name("info")
            .setting(AppSettings::ArgRequiredElseHelp)
            .setting(AppSettings::TrailingVarArg)
            .arg(Arg::with_name("documentation")
                .short("d")
                .long("documentation")
                .help("Report documentation URL"))
            // .arg_from_usage("-d, --documentation 'Report documentation URL'")
            .arg_from_usage("-D, --downloads 'Report number of crate downloads'")
            .arg_from_usage("-H, --homepage 'Report home page URL'")
            .arg_from_usage("-r, --repository 'Report crate repository URL'")
            .arg(Arg::with_name("json")
                .short("j")
                .long("json")
                .help("Report raw JSON data from crates.io")
                .conflicts_with_all(&["documentation", "downloads", "homepage", "repository"]))
            // .arg_from_usage("-j, --json 'Report raw json data from crates.io'")
            .arg_from_usage("-v, --verbose 'Report more details'")
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
