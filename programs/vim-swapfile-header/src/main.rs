use chrono::TimeZone;
use std::ffi::CStr;
use std::fs;
use std::io::Read;
use std::path::PathBuf;

use chrono::DateTime;
use chrono::Local;

use nom::combinator::map;
use serde::Serializer;
use structopt::StructOpt;

use nom::bytes::streaming::{tag, take};
use nom::combinator::map_opt;
use nom::number::streaming::u32;
use nom::sequence::preceded;
use nom::{number::Endianness, IResult};

use serde::Serialize;
use structopt::clap::arg_enum;

use anyhow::anyhow;
use anyhow::Result as AResult;

const USER_HOST_SIZE: usize = 40;
const FILENAME_SIZE: usize = 900;

#[derive(Serialize, Debug)]
struct Header {
    version: String,
    page_size: u32,
    #[serde(serialize_with = "serialize_dt_iso")]
    mtime: DateTime<Local>,
    inode: u32,
    pid: u32,
    username: String,
    hostname: String,
    filename: String,
}

fn serialize_dt_iso<S>(dt: &DateTime<Local>, ser: S) -> Result<S::Ok, S::Error>
where
    S: Serializer,
{
    ser.serialize_str(&dt.to_rfc3339())
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

arg_enum! {
#[derive(Debug)]
enum OutputFormat {
    Json,
    Debug,
}
}

#[derive(Debug, StructOpt)]
#[structopt(
    name = "vim-swapfile-header",
    about = "Reads vim swapfile headers and dumps them as json"
)]
struct Opts {
    filename: PathBuf,
    #[structopt(default_value = "json", long, short = "f")]
    output_format: OutputFormat,
}

fn main() -> AResult<()> {
    let args = Opts::from_args();
    let mut file = fs::OpenOptions::new().read(true).open(&args.filename)?;
    let mut buf = [0u8; 1024];
    file.read(&mut buf)?;

    let (_rest, header) = parse(&buf).map_err(|_| anyhow!("header parse failed"))?;
    let out_s = match args.output_format {
        OutputFormat::Json => serde_json::ser::to_string(&header)?,
        OutputFormat::Debug => format!("{:#?}", &header),
    };

    println!("{}", out_s);

    Ok(())
}
