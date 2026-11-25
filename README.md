# mps-terminal-scripts

CLI helper scripts of the my-perfect-system (mps) terminal stack, deployed to `~/.local/bin`.

## Install

| Method   | Command / Notes |
|----------|-----------------|
| Default  | `bootstrap.sh` clones to the system-wide mps repo dir and runs `install.sh` |
| Ansible  | can be used by installing via the `odem.terminal.scripts` role of [odem-terminal](https://github.com/my-perfect-system/odem-terminal) |
| Standalone | clone the repo, then run `./install.sh` inside it; no network needed |

### Install (Default)

```bash
curl -fsSL https://raw.githubusercontent.com/my-perfect-system/mps-terminal-scripts/main/bootstrap.sh | bash
```

All methods copy `scripts/` to the current user's `~/.local/bin` (mode 0700); one clone per host (`${MPS_REPO_DIR:-/srv/repo/github/my-perfect-system/mps}`), shared by all users.

## Usage

```bash
hostinfo                         # print host information (example helper)
ls ~/.local/bin                 # all deployed mps helpers
```