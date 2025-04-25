# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

# Path to your oh-my-bash installation.
export OSH='/home/m3lk0r/.oh-my-bash'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.
OSH_THEME="robbyrussell"

OMB_USE_SUDO=true

completions=(
  git
  composer
  ssh
)

aliases=(
  general
)

plugins=(
  git
  bashmarks
)

source "$OSH"/oh-my-bash.sh

export PATH="$PATH:/opt/nvim-linux64/bin"
export VIMRUNTIME=/opt/nvim-linux64/share/nvim/runtime
export PATH="$HOME/zig-linux-x86_64-0.11.0:$PATH"
export PATH="$HOME/zig-linux-x86_64-0.13.0:$PATH"
alias vi=nvim
#export PATH="$HOME/Desktop/sonar-scanner-5.0.1.3006-linux/bin:$PATH"
export PATH="$HOME/Desktop/sonar-scanner-7.0.2.4839-linux-x64/bin:$PATH"
export PATH="$PATH:/usr/local/snyk-linux"
export PATH="$HOME/.tmuxifier/bin:$PATH"
export PATH="$PATH:/opt"
export PATH="$HOME/.fzf/bin:$PATH"
export FZF_CTRL_T_OPTS="--height 40% --layout=reverse --border"
export FZF_CTRL_R_OPTS="--height 40% --layout=reverse --border"
export FZF_ALT_C_OPTS="--height 40% --layout=reverse --border"
export _JAVA_AWT_WM_NONREPARENTING=1
alias nv=neovide
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
eval "$(tmuxifier init -)"
#eval "$(starship init bash)"

# Created by `pipx` on 2024-12-11 10:22:29
export PATH="$PATH:/home/m3lk0r/.local/bin"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
. /home/m3lk0r/.nix-profile/etc/profile.d/nix.sh
. "$HOME/.cargo/env"
