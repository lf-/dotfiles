use clap::Clap;
use color_eyre::{eyre::eyre, eyre::Context, Result};
use futures::future;
use lazy_static::lazy_static;
use log::{debug, info, LevelFilter};
use nvim_rs::rpc::handler::Dummy;
use regex::Regex;

use std::{
    ffi::OsString,
    fs, io,
    path::{Path, PathBuf},
};

#[derive(Clap, Debug, Clone)]
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

    /// do something to one instance
    One {
        path: PathBuf,
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
async fn find_sockets() -> Result<Vec<PathBuf>, io::Error> {
    // on windows this is a pipe in the global pipes place
    fn file_is_probably_nvim_socket(dent: &tokio::fs::DirEntry) -> Result<bool, io::Error> {
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

    let mut it = tokio::fs::read_dir(r"\\.\pipe").await?;
    while let Some(ent) = it.next_entry().await? {
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
async fn find_sockets() -> Result<Vec<PathBuf>, io::Error> {
    macro_rules! try_or_continue {
        ($e:expr) => {
            match $e {
                Ok(v) => v,
                Err(_) => continue,
            }
        };
    }

    lazy_static! {
        // STRCAT(template, "nvimXXXXXX");
        static ref NAME_RE: Regex = Regex::new(r"nvim.{6}").unwrap();
    };

    use std::os::unix::prelude::FileTypeExt;
    let mut socks = Vec::new();

    static TEMP_DIR_NAMES: &[&str] = &["$TMPDIR", "/tmp", ".", "~"];

    for &tmpdir in TEMP_DIR_NAMES {
        let expanded = try_or_continue!(shellexpand::full(tmpdir));

        let mut it = try_or_continue!(tokio::fs::read_dir(expanded.as_ref()).await);

        while let Some(e) = it.next_entry().await? {
            // it has the nvim temp template
            if !(e
                    .file_name()
                    .to_str()
                    .map(|s| NAME_RE.is_match(s))
                    .unwrap_or(false)
                    // it's a dir
                    && try_or_continue!(e.file_type().await).is_dir())
            {
                continue;
            }

            // look for /0
            let mut p = e.path();
            p.push("0");

            let meta = tokio::fs::metadata(&p).await;

            if let Ok(meta) = meta {
                if meta.file_type().is_socket() {
                    socks.push(p);
                }
            }
        }
    }

    Ok(socks)
}

enum EvalOrExec {
    Eval,
    Exec,
}

async fn run_cmd_on(sock: &Path, cmd: &str, with: EvalOrExec) -> Result<nvim_rs::Value> {
    debug!("connect to {}", sock.display());
    let hand = Dummy::new();
    let (nvim, _jh) = nvim_rs::create::tokio::new_path(sock, hand)
        .await
        .wrap_err("connect to nvim")?;

    let result = match with {
        EvalOrExec::Eval => nvim
            .call("nvim_eval", vec![cmd.into()])
            .await?
            .map_err(|v| eyre!("error running command: {}", v.to_string()))?,
        EvalOrExec::Exec => nvim
            .call("nvim_exec", vec![cmd.into(), true.into()])
            .await?
            .map_err(|v| eyre!("error running command: {}", v.to_string()))?,
    };

    info!("Call on {} returns {}", sock.display(), result);
    Ok(result)
}

async fn cmd_each(cmd: EachCmd) -> Result<()> {
    let socks = find_sockets().await.wrap_err("could not find sockets")?;
    debug!("socks: {:?}", &socks);
    future::join_all(socks.into_iter().map(|sock| {
        let cmd = cmd.clone();
        tokio::spawn(async move {
            match cmd {
                EachCmd::Run { ref cmd } => run_cmd_on(&sock, cmd, EvalOrExec::Exec).await,
            }
        })
    }))
    .await;

    debug!("done");
    Ok(())
}

async fn find_sock_for_pid(find_pid: u32) -> Result<Option<PathBuf>> {
    let socks = find_sockets().await.wrap_err("find sockets")?;
    let pidsocks = future::join_all(socks.into_iter().map(|sock| {
        tokio::spawn(async {
            let pid = match run_cmd_on(&sock, "getpid()", EvalOrExec::Eval).await {
                Ok(nvim_rs::Value::Integer(p)) => p,
                pid => panic!("wtf why was the pid a {pid:?}"),
            };
            (pid, sock)
        })
    }))
    .await;

    let maybe_pidsock = pidsocks
        .into_iter()
        .filter_map(|v| v.ok())
        .find(|(p, _)| p.as_u64().unwrap() == find_pid as u64);
    Ok(maybe_pidsock.map(|(_pid, sock)| sock))
}

async fn cmd_one(path: PathBuf, cmd: EachCmd) -> Result<()> {
    let swapfile: PathBuf = vim_swapfile_header::swap_file_for(&path)?;
    let content = fs::read(swapfile)?;
    let header: vim_swapfile_header::Header = vim_swapfile_header::from_bytes(&content)?;

    let sock = find_sock_for_pid(header.pid)
        .await?
        .ok_or(eyre!("could not find the socket :("))?;

    match cmd {
        EachCmd::Run { ref cmd } => run_cmd_on(&sock, cmd, EvalOrExec::Exec).await?,
    };
    Ok(())
}

#[tokio::main]
async fn main() -> Result<()> {
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
        SubCommand::Each { cmd } => cmd_each(cmd).await,
        SubCommand::One { path, cmd } => cmd_one(path, cmd).await,
    }
}
