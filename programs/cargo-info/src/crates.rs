use std::fmt;

use chrono::{DateTime, Utc};
use chrono_humanize::Humanize;
use serde::Deserialize;

// #[derive(Debug, Default)]
// pub struct Error {
//     pub detail: String,
// }
//
//
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
//
// pub struct Reply {
//     pub errors: Error,
//     pub krate: Crate,
//     pub keywords: Vec<Keyword>,
//     pub versions: Vec<Version>,
// }

#[derive(Deserialize, Debug)]
pub struct CratesResp {
    #[serde(rename = "crate")]
    pub krate: Crate,

    pub versions: Vec<Version>,
}

#[derive(Deserialize, Debug)]
pub struct CrateLinks {
    pub owners: Option<String>,
    pub reverse_dependencies: String,
    pub version_downloads: String,
    pub versions: Option<String>,
}

#[derive(Deserialize, Debug)]
pub struct Crate {
    pub created_at: String,
    pub description: Option<String>,
    pub documentation: Option<String>,
    pub downloads: i32,
    pub homepage: Option<String>,
    pub id: String,
    pub keywords: Option<Vec<String>>,
    pub license: Option<String>,
    pub links: CrateLinks,
    pub max_version: String,
    pub name: String,
    pub repository: Option<String>,
    pub updated_at: String,
    pub versions: Vec<i32>,
}

#[derive(Deserialize, Debug)]
pub struct Version {
    #[serde(rename = "crate")]
    pub krate: String,
    pub created_at: String,
    pub dl_path: String,
    pub downloads: i32,
    // pub features: HashMap<String, Vec<String>>,
    pub id: i32,
    // pub links: VersionLinks,
    pub num: String,
    pub updated_at: String,
    pub yanked: bool,
}

impl CratesResp {
    pub fn print_repository(&self, verbose: bool) -> String {
        self.krate
            .repository
            .as_ref()
            .map(|repo| {
                if verbose {
                    format!("{:<16}{}", "Repository:", &repo)
                } else {
                    (&repo).to_string()
                }
            })
            .unwrap_or_else(Default::default)
    }

    pub fn print_documentation(&self, verbose: bool) -> String {
        self.krate
            .documentation
            .as_ref()
            .map(|doc| {
                if verbose {
                    format!("{:<16}{}", "Documentation:", doc)
                } else {
                    doc.to_string()
                }
            })
            .unwrap_or_else(Default::default)
    }

    pub fn print_downloads(&self, verbose: bool) -> String {
        if verbose {
            format!("{:<16}{}", "Downloads:", self.krate.downloads)
        } else {
            format!("{}", self.krate.downloads)
        }
    }

    pub fn print_homepage(&self, verbose: bool) -> String {
        self.krate
            .homepage
            .as_ref()
            .map(|hp| {
                if verbose {
                    format!("{:<16}{}", "Homepage:", &hp)
                } else {
                    (&hp).to_string()
                }
            })
            .unwrap_or_else(Default::default)
    }

    fn print_version(v: &Version, verbose: bool) -> String {
        let created_at = rfc3339_human(&v.created_at);
        let mut output = format!("{:<11}{:<#16}{:<11}", v.num, created_at, v.downloads);

        if v.yanked {
            output += "\t\t(yanked)";
        }

        if verbose {
            // Consider adding some more useful information in verbose mode
        }

        output + "\n"
    }

    fn print_version_header(verbose: bool) -> String {
        let output = format!("{:<11}{:<#16}{:<11}\n", "VERSION", "RELEASED", "DOWNLOADS");

        if verbose {
            // Consider adding some more useful information in verbose mode
        }

        output + "\n"
    }

    pub fn print_last_versions(&self, limit: usize, verbose: bool) -> String {
        let mut output = CratesResp::print_version_header(verbose);
        for version in self.versions.iter().take(limit) {
            output = output + &CratesResp::print_version(version, verbose);
        }
        let length = self.versions.len();
        if limit < length {
            output = output + &format!("\n... use -VV to show all {} versions\n", length);
        }
        output
    }

    pub fn print_keywords(&self, verbose: bool) -> String {
        self.krate
            .keywords
            .as_ref()
            .map(|kw| {
                if verbose {
                    format!("{:#?}", kw)
                } else {
                    format!("{:?}", kw)
                }
            })
            .unwrap_or_else(Default::default)
    }
}

fn rfc3339_human(s: &str) -> String {
    DateTime::parse_from_rfc3339(s)
        .map(|dt| {
            let now = Utc::now();
            let diff = dt.naive_utc() - now.naive_utc();
            diff.humanize()
        })
        .expect("parse datetime")
}

impl fmt::Display for CratesResp {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        let updated_at = rfc3339_human(&self.krate.updated_at);

        let mut versions = String::new();
        for line in self.print_last_versions(5, false).lines() {
            versions += "\n";
            if !line.is_empty() {
                versions = versions + "  " + line;
            }
        }

        let empty = String::new();

        write!(
            f,
            "{}\n{}\n{}\n{}\n{}\n{}\n{}\n{}\n{}",
            format_args!("{:<16}{}", "Crate:", self.krate.name),
            format_args!("{:<16}{}", "Version:", self.krate.max_version),
            format_args!(
                "{:<16}{}",
                "Description:",
                self.krate.description.as_ref().unwrap_or(&empty)
            ),
            format_args!("{:<16}{}", "Downloads:", self.krate.downloads),
            format_args!(
                "{:<16}{}",
                "Homepage:",
                self.krate.homepage.as_ref().unwrap_or(&empty)
            ),
            format_args!(
                "{:<16}{}",
                "Documentation:",
                self.krate.documentation.as_ref().unwrap_or(&empty)
            ),
            format_args!(
                "{:<16}{}",
                "Repository:",
                self.krate.repository.as_ref().unwrap_or(&empty)
            ),
            format_args!("{:<16}{:#}", "Last updated:", updated_at),
            format_args!("{:<16}\n{}", "Version history:", versions)
        )
    }
}
