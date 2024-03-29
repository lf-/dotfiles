#[macro_use]
extern crate clap;
extern crate chrono;
extern crate chrono_humanize;
#[macro_use]
extern crate failure;
extern crate pager;

use clap::{App, AppSettings, Arg, ArgMatches, SubCommand};
use pager::Pager;
use reqwest::blocking::{ClientBuilder, Response};
use std::fmt;

use crate::crates::CratesResp;

mod crates;

const CARGO: &str = "cargo-info";

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
    versions: usize,
    keywords: bool,
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

        let versions = match info.occurrences_of("versions") {
            0 => 0,                  // No flags - nothing to do
            1 => 5,                  // Single -V - show 5 last versions
            _ => usize::max_value(), // All the other cases - show everything
        };

        Report {
            flags,
            verbose: info.is_present("verbose"),
            json: info.is_present("json"),
            versions,
            keywords: info.is_present("keywords"),
        }
    }

    pub fn report(&self, name: &str) -> reqwest::Result<String> {
        let response = query(name)?;
        let mut output = String::new();

        if self.json {
            output = output + &self.report_json(response);
        } else if let Some(krate) = Some(response.json::<CratesResp>().unwrap()) {
            if self.versions > 0 {
                output = output + &self.report_versions(&krate, self.versions);
            } else if self.keywords {
                output = output + &self.report_keywords(&krate);
            } else {
                output = output + &self.report_crate(&krate);
            }
        };
        Ok(output)
    }

    pub fn report_json(&self, response: Response) -> String {
        let mut output = String::new();
        if let Ok(json) = response.text() {
            output += &json;
        }
        output
    }

    pub fn report_crate(&self, krate: &crates::CratesResp) -> String {
        let mut output = String::new();
        for flag in &self.flags {
            output = output
                + &match *flag {
                    Flag::Repository => krate.print_repository(self.verbose),
                    Flag::Documentation => krate.print_documentation(self.verbose),
                    Flag::Downloads => krate.print_downloads(self.verbose),
                    Flag::Homepage => krate.print_homepage(self.verbose),
                    Flag::Default => reportv(krate, self.verbose),
                }
        }
        output
    }

    pub fn report_versions(&self, krate: &crates::CratesResp, limit: usize) -> String {
        if limit > 0 {
            krate.print_last_versions(limit, self.verbose)
        } else {
            String::new()
        }
    }

    pub fn report_keywords(&self, krate: &crates::CratesResp) -> String {
        krate.print_keywords(self.verbose)
    }
}

fn reportv(krate: &crates::CratesResp, verbose: bool) -> String {
    if verbose {
        format!("{:#}", krate)
    } else {
        format!("{}", krate)
    }
}

static UA: &str = concat!(env!("CARGO_PKG_NAME"), "/", env!("CARGO_PKG_VERSION"));

fn query(krate: &str) -> reqwest::Result<Response> {
    let client = ClientBuilder::new().user_agent(UA).build()?;
    client
        .get(&format!("https://crates.io/api/v1/crates/{}", krate))
        .send()
}

// fn debug<T>(item: &T)
//     where T: fmt::Debug
// {
//     println!("{:#?}", item);
// }

fn print_report<T>(r: reqwest::Result<T>)
where
    T: fmt::Display,
{
    match r {
        Ok(text) => println!("\n{}\n", text),
        Err(err) => println!("\n{}\n", err),
    }
}

fn main() {
    Pager::new().setup();

    let matches = App::new(CARGO)
        .bin_name(CARGO)
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
            .arg(Arg::with_name("downloads")
                .short("D")
                .long("downloads")
                .help("Report number of crate downloads"))
            .arg(Arg::with_name("homepage")
                .short("H")
                .long("homepage")
                .help("Report home page URL"))
            .arg(Arg::with_name("repository")
                .short("r")
                .long("repository")
                .help("Report crate repository URL"))
            .arg(Arg::with_name("json")
                .short("j")
                .long("json")
                .help("Report raw JSON data from crates.io")
                .conflicts_with_all(&["documentation", "downloads", "homepage", "repository"]))
            .arg(Arg::with_name("verbose")
                .short("v")
                .long("verbose")
                .help("Report more details"))
            .arg(Arg::with_name("versions")
                .short("V")
                .long("versions")
                .multiple(true)
                .help("Report version history of the crate (5 last versions), twice for full \
                       history"))
            .arg_from_usage("<crate>... 'crate to query'"))
        .get_matches();

    if let Some(info) = matches.subcommand_matches("info") {
        if let Some(crates) = info.values_of("crate") {
            let rep = Report::new(info);
            for krate in crates {
                // debug(&krate);
                print_report(rep.report(krate));
            }
        }
    }
}
