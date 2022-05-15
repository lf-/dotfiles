use std::fs;
use std::io::Read;
use std::path::PathBuf;

use structopt::clap::arg_enum;
use structopt::StructOpt;

use eyre::Result as AResult;

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

    let header = vim_swapfile_header::from_bytes(&buf)?;
    let out_s = match args.output_format {
        OutputFormat::Json => serde_json::ser::to_string(&header)?,
        OutputFormat::Debug => format!("{:#?}", &header),
    };

    println!("{}", out_s);

    Ok(())
}
