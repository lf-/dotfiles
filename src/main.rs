#[macro_use]
extern crate clap;
extern crate chrono;
extern crate itertools;
extern crate json;
extern crate requests;

mod crates;

use clap::{App, SubCommand, Arg, AppSettings, ArgMatches};

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
    versions: bool,
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

        Report {
            flags: flags,
            verbose: info.is_present("verbose"),
            json: info.is_present("json"),
            versions: info.is_present("versions"),
            keywords: info.is_present("keywords"),
        }
    }

    pub fn report(&self, name: &str) {
        if let Ok(response) = query(name) {
            if self.json {
                self.report_json(&response)
            } else if let Some(krate) = get_crate(&response) {
                if self.versions {
                    self.report_versions(&krate);
                } else if self.keywords {
                    self.report_keywords(&krate);
                } else {
                    self.report_crate(&krate);
                }
            }
        }
    }

    pub fn report_json(&self, response: &requests::Response) {
        if self.verbose {
            if let Ok(json) = response.json() {
                println!("{:#}", json);
            }
        } else if let Some(json) = response.text() {
            println!("{}", json);
        }
    }

    pub fn report_crate(&self, krate: &crates::Crate) {
        for flag in &self.flags {
            match *flag {
                Flag::Repository => krate.print_repository(self.verbose),
                Flag::Documentation => krate.print_documentation(self.verbose),
                Flag::Downloads => krate.print_downloads(self.verbose),
                Flag::Homepage => krate.print_homepage(self.verbose),
                Flag::Default => reportv(krate, self.verbose),
            }
        }
    }

    pub fn report_versions(&self, krate: &crates::Crate) {
        krate.print_last_versions(self.verbose)
    }

    pub fn report_keywords(&self, krate: &crates::Crate) {
        krate.print_keywords(self.verbose)
    }
}

fn reportv(krate: &crates::Crate, verbose: bool) {
    if verbose {
        println!("{:#}", krate);
    } else {
        println!("{}", krate);
    }
}

fn query(krate: &str) -> requests::RequestsResult {
    requests::get(&format!("http://crates.io/api/v1/crates/{}", krate))
}

fn get_crate(response: &requests::Response) -> Option<crates::Crate> {
    response.json().ok().map(|k| crates::Crate::new(&k))
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
                .help("Report version history of the crate (5 last versions)"))
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
