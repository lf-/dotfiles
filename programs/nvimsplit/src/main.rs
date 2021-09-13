use std::env;

use neovim_lib::{Neovim, NeovimApi, Session};

use color_eyre::eyre::eyre;
use color_eyre::eyre::Result;
use color_eyre::eyre::WrapErr;

use clap::Clap;

use log::LevelFilter;
use log::{debug, warn};

#[derive(Clap, Debug)]
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
    filename: String,
}

fn get_socket() -> Result<String> {
    env::var("NVIM_LISTEN_ADDRESS").wrap_err("getting NVIM_LISTEN_ADDRESS")
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

    let cwd = env::current_dir()?;
    let abspath = cwd.join(&args.filename);

    let abspath_s = abspath
        .to_str()
        .ok_or_else(|| eyre!("non-utf8 target path"))?;

    let escaped = nvim
        .call_function("fnameescape", vec![abspath_s.into()])
        .wrap_err("escape filename")?;

    let escaped_s = escaped
        .as_str()
        .ok_or_else(|| eyre!("unexpected return type for fnameescape"))?;

    let cmd = format!("{} {}", cmd.to_cmd(), escaped_s);
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
