use std::collections::HashMap;

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
