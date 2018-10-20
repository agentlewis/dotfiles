# Themes.
ZSH_THEME="oxide"

# Case-sensitive completion.
CASE_SENSITIVE="true"

# Disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Disable marking untracked files under VCS as dirty.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# History.
HIST_STAMPS="yyyy-mm-dd"

# Plugins.
plugins=(
    archive
    extract
    git
    ubuntu
)

# Environment variables.
source ~/.exports

# Oh My Zsh.
source "$ZSH"/oh-my-zsh.sh

# User config.
source ~/.zsh/setopt.zsh

# Aliases.
source ~/.aliases
source ~/.aliases_private

# Functions.
source ~/.functions
source ~/.functions_private

# Tracks your most used directories, based on frecency with z.
source ~/.zsh/plugins/z/z.sh

# fzf key bindings.
source ~/.fzf/shell/key-bindings.zsh

# dircolors.
if [ -x "$(command -v dircolors)" ]; then
    eval "$(dircolors -b ~/.dircolors)"
fi

# Manage SSH with Keychain.
if [ -x "$(command -v keychain)" ]; then
    eval "$(keychain --eval --quiet id_rsa_github id_rsa_gitlab)"
fi

# Base16 Shell.
[ -n "$PS1" ] && [ -s "$BASE16_SHELL/profile_helper.sh" ] && eval "$("$BASE16_SHELL/profile_helper.sh")"

# Start tmux.
if [[ -x "$(command -v tmux)" && "$(ps -o 'cmd=' -p $(ps -o 'ppid=' -p $$))" = "alacritty" ]]; then
    [ -z "$TMUX" ] && { tmux attach-session || exec tmux && exit; }
fi

### Added by Zplugin's installer
source '/home/dan/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
zplugin ice as"program" pick"bin/git-dsf"
zplugin light zdharma/zsh-diff-so-fancy
### End of Zplugin's installer chunk
