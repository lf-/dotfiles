use chrono::TimeZone;
use std::ffi::CStr;
use std::ffi::OsString;
use std::path::Path;
use std::path::PathBuf;

use chrono::DateTime;
use chrono::Local;

use serde::Serialize;
use serde::Serializer;

use eyre::anyhow;
use eyre::Result as AResult;

use nom::bytes::streaming::{tag, take};
use nom::combinator::map;
use nom::combinator::map_opt;
use nom::number::streaming::u32;
use nom::sequence::preceded;
use nom::{number::Endianness, IResult};

const USER_HOST_SIZE: usize = 40;
const FILENAME_SIZE: usize = 900;

fn serialize_dt_iso<S>(dt: &DateTime<Local>, ser: S) -> Result<S::Ok, S::Error>
where
    S: Serializer,
{
    ser.serialize_str(&dt.to_rfc3339())
}

#[derive(Serialize, Debug)]
pub struct Header {
    pub version: String,
    pub page_size: u32,
    #[serde(serialize_with = "serialize_dt_iso")]
    pub mtime: DateTime<Local>,
    pub inode: u32,
    pub pid: u32,
    pub username: String,
    pub hostname: String,
    pub filename: String,
}

fn cstr_from_buf(buf: &[u8]) -> Option<&CStr> {
    let len = buf.iter().position(|&c| c == b'\0')?;
    // SAFETY: we do not have any internal nul bytes in the slice we give this, and it does have a
    // null termination as per us checking above
    Some(unsafe { CStr::from_bytes_with_nul_unchecked(&buf[..=len]) })
}

fn buf_to_string(buf: &[u8]) -> Option<String> {
    let cstr = cstr_from_buf(buf)?;
    Some(cstr.to_str().ok()?.to_owned())
}

pub fn swap_file_for(file: &Path) -> AResult<PathBuf> {
    let canonical = file.canonicalize()?;
    let comps = canonical.components().filter_map(|c| match c {
        std::path::Component::Normal(v) => Some(v),
        _ => None,
    });
    let mut fname = OsString::new();
    for comp in comps {
        fname.push("%");
        fname.push(comp);
    }
    fname.push(".swp");

    let mut path = xdg::BaseDirectories::new()?.get_data_home();
    path.push("nvim/swap");
    path.push(fname);

    Ok(path)
}

pub fn from_bytes(header: &[u8]) -> AResult<Header> {
    let (_rest, header) = parse(header).map_err(|_| anyhow!("header parse failed"))?;
    Ok(header)
}

fn parse(header: &[u8]) -> IResult<&[u8], Header, nom::error::Error<&[u8]>> {
    let u32le = u32(Endianness::Little);
    let version = map_opt(take(10usize), buf_to_string);
    let mut user_host_name = map_opt(take(USER_HOST_SIZE), buf_to_string);
    let mut filename = map_opt(take(FILENAME_SIZE), buf_to_string);

    let u64le_magic = 0x30313233u64;
    let u64le_magic = tag(u64le_magic.to_le_bytes());
    let u32le_magic = 0x20212223u32;
    let u32le_magic = tag(u32le_magic.to_le_bytes());
    let u16le_magic = 0x1213u16; // stored as 0x1312. nice.
    let u16le_magic = tag(u16le_magic.to_le_bytes());

    let (header, version) = preceded(tag(b"b0"), version)(header)?;
    let (header, page_size) = u32le(header)?;
    let (header, mtime) = map(u32le, |t| Local.timestamp(t as i64, 0))(header)?;
    let (header, inode) = u32le(header)?;
    let (header, pid) = u32le(header)?;
    let (header, username) = user_host_name(header)?;
    let (header, hostname) = user_host_name(header)?;
    let (header, filename) = filename(header)?;
    let (header, _) = u64le_magic(header)?;
    let (header, _) = u32le_magic(header)?;
    let (header, _) = u16le_magic(header)?;

    Ok((
        header,
        Header {
            version,
            page_size,
            mtime,
            inode,
            pid,
            username,
            hostname,
            filename,
        },
    ))
}
