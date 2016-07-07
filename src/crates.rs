use std::fmt;

use chrono::{DateTime, Local};
use itertools::Itertools;
use json::JsonValue;

// #[derive(Debug, Default)]
// pub struct Error {
//     pub detail: String,
// }
//
// #[derive(Debug)]
// pub struct CrateLinks {
//     pub owners: Option<String>,
//     pub reverse_dependencies: String,
//     pub version_downloads: String,
//     pub versions: Option<String>,
// }
//
// pub struct Crate {
//     pub created_at: String,
//     pub description: Option<String>,
//     pub documentation: Option<String>,
//     pub downloads: i32,
//     pub homepage: Option<String>,
//     pub id: String,
//     pub keywords: Option<Vec<String>>,
//     pub license: Option<String>,
//     pub links: CrateLinks,
//     pub max_version: String,
//     pub name: String,
//     pub repository: Option<String>,
//     pub updated_at: String,
//     pub versions: Option<Vec<u64>>,
// }
//
// #[derive(Debug)]
// pub struct Keyword {
//     pub crates_cnt: u64,
//     pub created_at: String,
//     pub id: String,
//     pub keyword: String,
// }
//
// #[derive(Debug)]
// pub struct VersionLinks {
//     pub authors: String,
//     pub dependencies: String,
//     pub version_downloads: String,
// }
//
// #[derive(Debug)]
// pub struct Version {
//     pub krate: String,
//     pub created_at: String,
//     pub dl_path: String,
//     pub downloads: i32,
//     pub features: HashMap<String, Vec<String>>,
//     pub id: i32,
//     pub links: VersionLinks,
//     pub num: String,
//     pub updated_at: String,
//     pub yanked: bool,
// }
//
// pub struct Reply {
//     pub errors: Error,
//     pub krate: Crate,
//     pub keywords: Vec<Keyword>,
//     pub versions: Vec<Version>,
// }

struct TimeStamp(Option<DateTime<Local>>);

impl<'a> From<&'a JsonValue> for TimeStamp {
    fn from(jv: &JsonValue) -> Self {
        let parse = |s: &str| s.parse::<DateTime<Local>>().ok();
        TimeStamp(jv.as_str().and_then(parse))
    }
}

impl fmt::Display for TimeStamp {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        if let Some(ts) = self.0 {
            write!(f, "{}", ts)
        } else {
            write!(f, "")
        }
    }
}

pub struct Crate {
    krate: JsonValue,
    versions: JsonValue,
    keywords: JsonValue,
}

impl Crate {
    pub fn new(json: &JsonValue) -> Self {
        Crate {
            krate: json["crate"].clone(),
            versions: json["versions"].clone(),
            keywords: json["keywords"].clone(),
        }
    }

    pub fn print_repository(&self, verbose: bool) {
        if let JsonValue::String(ref repository) = self.krate["repository"] {
            let fmt = if verbose {
                format!("{:<16}{}", "Repository:", repository)
            } else {
                repository.clone()
            };
            println!("{}", fmt);
        }
    }

    pub fn print_documentation(&self, verbose: bool) {
        if let JsonValue::String(ref documentation) = self.krate["documentation"] {
            let fmt = if verbose {
                format!("{:<16}{}", "Documentation:", documentation)
            } else {
                documentation.clone()
            };
            println!("{}", fmt);
        }
    }

    pub fn print_downloads(&self, verbose: bool) {
        if let JsonValue::Number(downloads) = self.krate["downloads"] {
            let fmt = if verbose {
                format!("{:<16}{}", "Downloads:", downloads)
            } else {
                format!("{}", downloads)
            };
            println!("{}", fmt);
        }
    }

    pub fn print_homepage(&self, verbose: bool) {
        if let JsonValue::String(ref homepage) = self.krate["homepage"] {
            let fmt = if verbose {
                format!("{:<16}{}", "Homepage:", homepage)
            } else {
                homepage.clone()
            };
            println!("{}", fmt);
        }
    }

    fn print_version(v: &JsonValue, verbose: bool) {

        let fmt = if verbose {
            let created_at = TimeStamp::from(&v["created_at"]);
            format!("{} {} {}", v["num"], created_at, v["downloads"])
        } else {
            format!("{}", v["num"])
        };
        println!("{}", fmt);
    }

    pub fn print_last_versions(&self, verbose: bool) {
        // self.versions.members().take(5).rev().foreach(|v| Crate::print_version(v, verbose));
        self.versions.members().take(5).foreach(|v| Crate::print_version(v, verbose));
    }

    pub fn print_keywords(&self, verbose: bool) {
        let fmt = if verbose {
            format!("{:#}", self.keywords)
        } else {
            format!("{}", self.keywords)
        };
        println!("{}", fmt);
    }
}

impl fmt::Display for Crate {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        let empty = "";

        let name = self.krate["name"].as_str().unwrap_or(empty);
        let max_version = self.krate["max_version"].as_str().unwrap_or(empty);
        let downloads = self.krate["downloads"].as_i32().unwrap_or(0);

        let created_at = TimeStamp::from(&self.krate["created_at"]);
        let updated_at = TimeStamp::from(&self.krate["updated_at"]);

        let description = self.krate["description"].as_str().unwrap_or(empty);
        let documentation = self.krate["documentation"].as_str().unwrap_or(empty);
        let homepage = self.krate["homepage"].as_str().unwrap_or(empty);
        let repository = self.krate["repository"].as_str().unwrap_or(empty);
        let license = self.krate["license"].as_str().unwrap_or(empty);

        let keywords = self.krate["keywords"]
            .members()
            .filter_map(|jv| jv.as_str())
            .collect::<Vec<_>>();

        if f.alternate() {
            write!(f,
                   "{}\n{}\n{}\n{}\n{}\n{}\n{}\n{}\n{}\n{}\n{}",
                   format_args!("{:<16}{}", "Crate:", name),
                   format_args!("{:<16}{}", "Version:", max_version),
                   format_args!("{:<16}{}", "Description:", description),
                   format_args!("{:<16}{}", "Downloads:", downloads),
                   format_args!("{:<16}{}", "Homepage:", homepage),
                   format_args!("{:<16}{}", "Documentation:", documentation),
                   format_args!("{:<16}{}", "Repository:", repository),
                   format_args!("{:<16}{}", "License:", license),
                   format_args!("{:<16}{:?}", "Keywords:", keywords),
                   format_args!("{:<16}{}", "Created at:", created_at),
                   format_args!("{:<16}{}", "Updated at:", updated_at))
        } else {
            write!(f,
                   "{}\n{}\n{}\n{}\n{}\n{}\n{}",
                   format_args!("{:<16}{}", "Crate:", name),
                   format_args!("{:<16}{}", "Version:", max_version),
                   format_args!("{:<16}{}", "Description:", description),
                   format_args!("{:<16}{}", "Downloads:", downloads),
                   format_args!("{:<16}{}", "Homepage:", homepage),
                   format_args!("{:<16}{}", "Documentation:", documentation),
                   format_args!("{:<16}{}", "Repository:", repository))
        }
    }
}
