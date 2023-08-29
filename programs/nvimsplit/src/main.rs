use std::env;

use neovim_lib::{Neovim, NeovimApi, Session};

use color_eyre::eyre::eyre;
use color_eyre::eyre::Result;
use color_eyre::eyre::WrapErr;

use clap::Parser as ClapParser;

use log::LevelFilter;
use log::{debug, warn};

#[derive(clap::Parser, Debug)]
struct Args {
    /// should nvimsplit return immediately or wait for the edit to be finished?
    #[clap(long, short = 'd')]
    detach: bool,

    /// open in a :tabedit
    #[clap(long, short = 't', conflicts_with_all = &["split", "vsplit"])]
    tab: bool,

    /// open in a :split; default
    #[clap(long, short = 's')]
    split: bool,

    /// open in a :vsplit
    #[clap(long, short = 'v')]
    vsplit: bool,

    /// debug logging
    #[clap(long)]
    debug: bool,

    /// filename to open
    #[clap(num_args = 1..)]
    parts: Vec<String>,
}

fn get_socket() -> Result<String> {
    // https://github.com/neovim/neovim/pull/11009 changed the socket env-var
    // from NVIM_LISTEN_ADDRESS to NVIM, but the latter is not available on
    // older builds
    env::var("NVIM")
        .or_else(|_| env::var("NVIM_LISTEN_ADDRESS"))
        .wrap_err("getting $NVIM/$NVIM_LISTEN_ADDRESS")
}

/// Opening mode
enum Mode {
    Tab,
    Split,
    VSplit,
}

impl Mode {
    /// Extract the Mode from the mutually exclusive flag options
    fn from_args(args: &Args) -> Mode {
        match (args.tab, args.vsplit, args.split) {
            (true, _, _) => Mode::Tab,
            (_, true, _) => Mode::VSplit,
            (_, _, true) => Mode::Split,
            (_, _, _) => Mode::Split,
        }
    }

    fn to_cmd(&self) -> &'static str {
        match self {
            Self::Tab => "tabedit",
            Self::Split => "split",
            Self::VSplit => "vsplit",
        }
    }
}

/// Splits the parts of the args into the filename and the line number
fn split_parts(parts: &[String]) -> Result<(String, Option<u64>)> {
    let mut plussed = None;
    let mut nonplussed = None;

    for part in parts {
        if part.starts_with('+') {
            plussed = Some(part);
        } else {
            nonplussed = Some(part);
        }
    }

    let nonplussed = nonplussed
        .cloned()
        .ok_or_else(|| eyre!("missing filename"))?;
    let plussed = plussed.and_then(|v| v.trim_start_matches('+').parse::<u64>().ok());
    Ok((nonplussed, plussed))
}

fn main() -> Result<()> {
    let args: Args = Args::parse();
    let config = simplelog::ConfigBuilder::new()
        .add_filter_ignore("neovim_lib::rpc::client".to_string())
        .build();
    let level_filter = if args.debug {
        LevelFilter::Debug
    } else {
        LevelFilter::Warn
    };

    simplelog::TermLogger::init(level_filter, config, simplelog::TerminalMode::Stderr)?;
    color_eyre::install()?;

    debug!("args: {:?}", args);

    let cmd = Mode::from_args(&args);

    let sock = get_socket()?;
    debug!("opening {}", sock);

    let mut sess = Session::new_unix_socket(sock).wrap_err("opening socket to nvim")?;
    let recv = sess.start_event_loop_channel();
    let mut nvim = Neovim::new(sess);

    let (filename, lineno) = split_parts(&args.parts)?;

    let cwd = env::current_dir()?;
    let abspath = cwd.join(&filename);

    let abspath_s = abspath
        .to_str()
        .ok_or_else(|| eyre!("non-utf8 target path"))?;

    let escaped = nvim
        .call_function("fnameescape", vec![abspath_s.into()])
        .wrap_err("escape filename")?;

    let escaped_s = escaped
        .as_str()
        .ok_or_else(|| eyre!("unexpected return type for fnameescape"))?;

    // chomp only valid line numbers
    let lineno_part = lineno.map(|l| format!("+{l} ")).unwrap_or_default();

    let cmd = format!("{} {}{}", cmd.to_cmd(), lineno_part, escaped_s);
    debug!("calling nvim command {:?}", &cmd);
    nvim.command(&cmd).wrap_err("eval open command")?;

    if args.detach {
        return Ok(());
    }

    let ainfo = nvim.get_api_info()?;
    let chanid = ainfo[0].clone();
    let chanid = chanid
        .as_u64()
        .ok_or_else(|| eyre!("chanid was wrong type"))?;

    let req_notify_cmds = format!("\
augroup nvimsplit
autocmd BufHidden <buffer> silent! call rpcnotify({id}, \"BufHidden\")
autocmd VimLeave * if exists(\"v:exiting\") && v:exiting > 0 | silent! call rpcnotify({id}, \"Exit\", v:exiting) | endif
augroup END", id = chanid);

    // this bit stolen from nvr
    nvim.session
        .call("nvim_exec", vec![req_notify_cmds.into(), false.into()])
        .map_err(|v| eyre!("call request notify error: {}", v.to_string()))?;

    debug!("chan id: {:?}", chanid);

    debug!("listening for events");

    while let Ok((event_name, args)) = recv.recv() {
        debug!("event {} args {:?}", &event_name, &args);
        match event_name.as_str() {
            "BufHidden" => break,
            "Exit" => break,
            _ => warn!("got unexpected event {} with args {:?}", &event_name, &args),
        }
    }
    Ok(())
}

#[cfg(test)]
mod test {
    use super::*;

    #[test]
    fn split_test() {
        assert_eq!(
            split_parts(&["+25".to_string(), "file.txt".to_string()]).unwrap(),
            ("file.txt".to_string(), Some(25))
        );
    }
}
