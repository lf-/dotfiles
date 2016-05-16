use std::collections::HashMap;
use std::fmt;

#[derive(Debug, Default, Deserialize)]
pub struct Error {
    pub detail: String,
}

#[derive(Debug, Deserialize)]
pub struct CrateLinks {
    pub owners: Option<String>,
    pub reverse_dependencies: String,
    pub version_downloads: String,
    pub versions: Option<String>,
}

#[derive(Debug, Deserialize)]
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
    pub versions: Option<Vec<u64>>,
}

impl Crate {
    pub fn print_repository(&self, verbose: bool) {
        if let Some(repository) = self.repository.as_ref() {
            let fmt = if verbose {
                format!("{:<16}{}", "Repository:", repository)
            } else {
                repository.clone()
            };
            println!("{}", fmt);
        }
    }

    pub fn print_documentation(&self, verbose: bool) {
        if let Some(documentation) = self.documentation.as_ref() {
            let fmt = if verbose {
                format!("{:<16}{}", "Documentation:", documentation)
            } else {
                documentation.clone()
            };
            println!("{}", fmt);
        }
    }

    pub fn print_downloads(&self, verbose: bool) {
        let fmt = if verbose {
            format!("{:<16}{}", "Downloads:", self.downloads)
        } else {
            format!("{}", self.downloads)
        };
        println!("{}", fmt);
    }

    pub fn print_homepage(&self, verbose: bool) {
        if let Some(homepage) = self.homepage.as_ref() {
            let fmt = if verbose {
                format!("{:<16}{}", "Homepage:", homepage)
            } else {
                homepage.clone()
            };
            println!("{}", fmt);
        }
    }
}

#[derive(Debug, Deserialize)]
pub struct Keyword {
    pub crates_cnt: u64,
    pub created_at: String,
    pub id: String,
    pub keyword: String,
}

#[derive(Debug, Deserialize)]
pub struct VersionLinks {
    pub authors: String,
    pub dependencies: String,
    pub version_downloads: String,
}

#[derive(Debug, Deserialize)]
pub struct Version {
    #[serde(rename="crate")]
    pub krate: String,
    pub created_at: String,
    pub dl_path: String,
    pub downloads: i32,
    pub features: HashMap<String, Vec<String>>,
    pub id: i32,
    pub links: VersionLinks,
    pub num: String,
    pub updated_at: String,
    pub yanked: bool,
}

#[derive(Debug, Deserialize)]
pub struct Reply {
    #[serde(default)]
    pub errors: Error,
    #[serde(rename="crate")]
    pub krate: Crate,
    pub keywords: Vec<Keyword>,
    pub versions: Vec<Version>,
}

impl fmt::Display for Crate {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        let empty = &String::new();
        let empty_vec = &vec![empty.clone()];
        let description = self.description.as_ref().unwrap_or(empty);
        let documentation = self.documentation.as_ref().unwrap_or(empty);
        let homepage = self.homepage.as_ref().unwrap_or(empty);
        let repository = self.repository.as_ref().unwrap_or(empty);
        let license = self.license.as_ref().unwrap_or(empty);
        let keywords = self.keywords.as_ref().unwrap_or(empty_vec);

        if f.alternate() {
            write!(f,
                   "{}\n{}\n{}\n{}\n{}\n{}\n{}\n{}\n{}\n{}\n{}",
                   format_args!("{:<16}{}", "Crate:", self.name),
                   format_args!("{:<16}{}", "Version:", self.max_version),
                   format_args!("{:<16}{}", "Description:", description),
                   format_args!("{:<16}{}", "Downloads:", self.downloads),
                   format_args!("{:<16}{}", "Homepage:", homepage),
                   format_args!("{:<16}{}", "Documentation:", documentation),
                   format_args!("{:<16}{}", "Repository:", repository),
                   format_args!("{:<16}{}", "License:", license),
                   format_args!("{:<16}{:?}", "Keywords:", keywords),
                   format_args!("{:<16}{}", "Created at:", self.created_at),
                   format_args!("{:<16}{}", "Updated at:", self.updated_at))
        } else {
            write!(f,
                   "{}\n{}\n{}\n{}\n{}\n{}\n{}",
                   format_args!("{:<16}{}", "Crate:", self.name),
                   format_args!("{:<16}{}", "Version:", self.max_version),
                   format_args!("{:<16}{}", "Description:", description),
                   format_args!("{:<16}{}", "Downloads:", self.downloads),
                   format_args!("{:<16}{}", "Homepage:", homepage),
                   format_args!("{:<16}{}", "Documentation:", documentation),
                   format_args!("{:<16}{}", "Repository:", repository))
        }
    }
}

pub type CratesReply = HashMap<String, String>;

#[derive(Deserialize, Debug)]
struct GenericResponse {
    args: HashMap<String, String>,
    data: Option<String>,
    files: Option<HashMap<String, String>>,
    form: Option<HashMap<String, String>>,
    headers: HashMap<String, String>,
    json: Option<String>,
    origin: String,
    url: String,
}
