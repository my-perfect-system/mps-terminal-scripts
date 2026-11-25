#!/bin/bash

# REPO_DIR=/srv/repo/github/my-perfect-system
REPO_DIR=/home/jb/repo/github/my-perfect-system
REPOS=("mps-terminal-vim" "mps-terminal-nvim" "mps-terminal-bash-aliases" "mps-terminal-scripts")

LOCHOME="$HOME"
LOCCONF="$LOCHOME/.config"
LOCBIN="$LOCHOME/.local/bin"
LOCETC="/etc"

# Update repo configs
# cp -r "$LOCCONF"/nvim/* "$REPO_DIR"/mps-terminal-nvim/config/nvim/
cp "$LOCHOME"/.vimrc "$REPO_DIR"/mps-terminal-vim/config/vim/
cp "$LOCBIN"/*.bash "$REPO_DIR"/mps-terminal-scripts/scripts
cp "$LOCETC"/bash_aliases.d/.bashrc_alias_* "$REPO_DIR"/mps-terminal-bash-aliases/bash_aliases.d

# Update Anisble files
ROLES_TERM="$REPO_DIR"/odem-terminal/roles
cp -r "$LOCCONF"/bashrc/.* "$ROLES_TERM"/bash/files/dotfiles/.config/bashrc
rm -rf "$ROLES_TERM"/bash/files/dotfiles/.config/bashrc/.bash_history

cp -r "$LOCCONF"/kitty/kitty.conf "$REPO_DIR"/mps-terminal-kitty/config/kitty/
cp -r "$LOCCONF"/tmuxinator/* "$REPO_DIR"/mps-terminal-tmux/config/tmuxinator/
cp -r "$LOCCONF"/tmux/tmux.conf "$REPO_DIR"/mps-terminal-tmux/config/tmux/
cp -r "$LOCCONF"/tmux/tmux.conf.local "$REPO_DIR"/mps-terminal-tmux/config/tmux/

# # Target dir
# [[ -f /etc/mps/.env ]] && source /etc/mps/.env
# ANSDIR="$MPS_REPODIR"
#
# # Target subdirs
# ROLEDIR="$ANSDIR"/roles
# # stage2
# STAGE2FLS="$ROLEDIR"/stage2-terminal/files
# STAGE2DOT="$STAGE2FLS"/dotfiles
# STAGE2SCR="$STAGE2FLS"/scripts
# STAGE2ETC="$STAGE2FLS"/etc
# STAGE2SKL="$STAGE2FLS"/skeletons
# STAGE2CFG="$STAGE2DOT"/.config
# # stage4
# STAGE4FLS="$ROLEDIR"/stage4-desktop/files
# STAGE4DOT="$STAGE4FLS"/dotfiles
# STAGE4SCR="$STAGE4FLS"/scripts
# STAGE4CFG="$STAGE4DOT"/.config
#
# # stage7
# STAGE7FLS="$ROLEDIR"/stage7-extras/files
# STAGE7DOT="$STAGE7FLS"/dotfiles
# STAGE7CFG="$STAGE7DOT"/.config
#
# # local dirs
# LOCCFG="$HOME/.config"
# LOCHOM="$HOME"
# LOCBIN="$HOME/.local/bin"
# LOCETC="/etc"
#
# # Update Stage2
# cp -r "$LOCCFG"/nvim "$STAGE2CFG"/
# # cp -r "$LOCCFG"/nvim-core "$STAGE2CFG"/
# cp -r "$LOCCFG"/nvim-dev "$STAGE2CFG"/
# cp -r "$LOCCFG"/bashrc "$STAGE2CFG"/
# cp -r "$LOCETC"/bash_aliases.d/ "$STAGE2ETC"/
# cp -r "$LOCCFG"/kitty "$STAGE2CFG"/
# cp -r "$LOCCFG"/tmuxinator "$STAGE2CFG"/
# cp -r "$LOCCFG"/tmux/tmux.conf "$STAGE2CFG"/tmux
# cp -r "$LOCCFG"/tmux/tmux.conf.local "$STAGE2CFG"/tmux
# cp -r "$LOCCFG"/skeletons/* "$STAGE2SKL"/
# cp -r "$LOCBIN"/merge-ansible-configs.bash "$STAGE2SCR"/
# cp -r "$LOCBIN"/new-skeleton.bash "$STAGE2SCR"/
#
# # Update Stage4
# cp -r "$LOCCFG"/qtile "$STAGE4CFG"/
# cp -r "$LOCCFG"/kanata "$STAGE4CFG"/
# cp -r "$LOCCFG"/Thunar "$STAGE4CFG"/
# cp -r "$LOCBIN"/rofi-boot-* "$STAGE4SCR"/
# cp -r "$LOCBIN"/qtile-* "$STAGE4SCR"/
# cp -r "$LOCCFG"/picom.conf "$STAGE4DOT"/
#
# # Update stage7
# # cp -r "$LOCCFG"/opencode "$STAGE7CFG"/
# # cp -r "$LOCHOM"/.claude "$STAGE7DOT"/
