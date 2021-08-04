use clap::Clap;
use color_eyre::{eyre::eyre, eyre::Context, Result};
use lazy_static::lazy_static;
use log::{debug, info, LevelFilter};
use neovim_lib::{Neovim, Session};
use regex::Regex;

use std::{
    fs, io,
    path::{Path, PathBuf},
};

#[derive(Clap, Debug)]
enum EachCmd {
    /// run a command verbatim
    Run { cmd: String },
}

#[derive(Clap, Debug)]
enum SubCommand {
    /// do something on all the nvim sockets on the system
    Each {
        #[clap(subcommand)]
        cmd: EachCmd,
    },
}

#[derive(Clap, Debug)]
struct Args {
    /// level of verbosity
    #[clap(short, long, parse(from_occurrences))]
    verbose: u32,

    /// subcommand to run
    #[clap(subcommand)]
    subcmd: SubCommand,
}

/// Finds all possible nvim sockets by poking through the temp directories and finding
/// appropriately named sockets.
///
/// This is a horrible hack. At least(?) it's not procfs.
#[cfg(windows)]
fn find_sockets() -> Result<Vec<PathBuf>, io::Error> {
    // on windows this is a pipe in the global pipes place
    fn file_is_probably_nvim_socket(dent: &DirEntry) -> Result<bool, io::Error> {
        lazy_static! {
            // "In Windows this is a named pipe in the format \\.\pipe\nvim-<PID>-<COUNTER>."
            static ref NAME_RE: Regex = Regex::new(r"nvim-\d+-\d+").unwrap();
        };

        Ok(dent
            .file_name()
            .to_str()
            .map(|s| NAME_RE.is_match(s))
            .unwrap_or(false))
    }

    let mut socks = Vec::new();

    for ent in fs::read_dir(r"\\.\pipe")?.flatten() {
        if let Ok(true) = file_is_probably_nvim_socket(&ent) {
            socks.push(ent.path());
        }
    }

    Ok(socks)
}

/// Finds all possible nvim sockets by poking through the temp directories and finding
/// appropriately named sockets.
///
/// This is a horrible hack. At least(?) it's not procfs.
#[cfg(not(windows))]
fn find_sockets() -> Result<Vec<PathBuf>, io::Error> {
    lazy_static! {
        // STRCAT(template, "nvimXXXXXX");
        static ref NAME_RE: Regex = Regex::new(r"nvim.{6}").unwrap();
    };

    use std::os::unix::prelude::FileTypeExt;
    let mut socks = Vec::new();

    static TEMP_DIR_NAMES: &[&str] = &["$TMPDIR", "/tmp", ".", "~"];

    for &tmpdir in TEMP_DIR_NAMES {
        (|| {
            let expanded = shellexpand::full(tmpdir).ok()?;

            for item in fs::read_dir(expanded.as_ref()).ok()?.flatten() {
                // it has the nvim temp template
                if !(item
                    .file_name()
                    .to_str()
                    .map(|s| NAME_RE.is_match(s))
                    .unwrap_or(false)
                    // it's a dir
                    && item.file_type().ok()?.is_dir())
                {
                    continue;
                }

                // look for /0
                let mut p = item.path();
                p.push("0");

                let meta = fs::metadata(&p).ok()?;

                if meta.file_type().is_socket() {
                    socks.push(p);
                }
            }
            Some(())
        })();
    }

    Ok(socks)
}

fn run_cmd_on(sock: &Path, cmd: &str) -> Result<()> {
    debug!("connect to {}", sock.display());
    let mut sess = Session::new_unix_socket(sock).wrap_err("connect to nvim")?;
    sess.start_event_loop();
    let mut nvim = Neovim::new(sess);
    let result = nvim
        .session
        .call("nvim_exec", vec![cmd.into(), true.into()])
        .map_err(|v| eyre!("error running command: {}", v.to_string()))?;
    info!("Call on {} returns {}", sock.display(), result);
    Ok(())
}

fn cmd_each(cmd: EachCmd) -> Result<()> {
    for sock in find_sockets().wrap_err("could not find sockets")? {
        match cmd {
            EachCmd::Run { ref cmd } => run_cmd_on(&sock, cmd),
        }?
    }
    Ok(())
}

fn main() -> Result<()> {
    let args: Args = Args::parse();
    let config = simplelog::ConfigBuilder::new()
        .add_filter_ignore("neovim_lib::rpc::client".to_string())
        .build();
    let level_filter = match args.verbose {
        0 => LevelFilter::Info,
        1 => LevelFilter::Debug,
        2.. => LevelFilter::Trace,
    };

    simplelog::TermLogger::init(level_filter, config, simplelog::TerminalMode::Stderr)?;
    color_eyre::install()?;
    debug!("args: {:#?}", &args);
    match args.subcmd {
        SubCommand::Each { cmd } => cmd_each(cmd),
    }
}
