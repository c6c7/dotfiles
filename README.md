# c6c7's configuration

This configuration leans heavily into emacs with xah-fly-keys bindings,
tmux, and zsh. Additionally, it uses rcm to manage the syncing of the
configuration across machines.

## Prerequisites

The following list of tools is assumed to be installed on whatever
machine uses this configuration. There are techniques to generalize
installation of these tool, e.g., guix, that are not used here. 

- rcm for rcup (to install these dotfiles)
- zsh
- oh-my-zsh
- tmux
- emacs
- ssh key for github.com
- ydiff (for improved diffs)
- rust toolchain
- rust-analyzer
- ra-multiplex (using cargo)
  - `systemctl --user enable ~/config/systemd/user/ra-multiplex.service`
