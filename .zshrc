# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH=$HOME/.docker/bin:$PATH

eval "$(/opt/homebrew/bin/brew shellenv)"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# themes without git: https://github.com/ohmyzsh/ohmyzsh/issues/3288#issuecomment-261610651
# ZSH_THEME="cypher" # modified version below
export PROMPT='%{${fg[green]}%}%3~%(0?. . %{${fg[red]}%}%? )%{${fg[blue]}%}»%{${reset_color}%} '

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

### on-my-zsh configuration
plugins=()
source $ZSH/oh-my-zsh.sh

### History configuration
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000 # BIG
SAVEHIST=100000 # BIG
setopt INC_APPEND_HISTORY # Immediately append to history file
setopt EXTENDED_HISTORY # Record timestamp in history
setopt HIST_EXPIRE_DUPS_FIRST # Expire duplicate entries first when trimming history
setopt HIST_IGNORE_DUPS # Dont record an entry that was just recorded again
setopt HIST_IGNORE_ALL_DUPS # Delete old recorded entry if new entry is a duplicate
setopt HIST_FIND_NO_DUPS # Do not display a line previously found
setopt HIST_IGNORE_SPACE # Dont record an entry starting with a space
setopt HIST_SAVE_NO_DUPS # Dont write duplicate entries in the history file
setopt SHARE_HISTORY # Share history between all sessions
eval "$(fzf --zsh)" # Set up fzf key bindings and fuzzy completion

### User configuration
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

. /opt/homebrew/opt/asdf/libexec/asdf.sh
PROG=sg source /Users/robert@sourcegraph.com/.sourcegraph/sg.zsh_autocomplete

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/robert@sourcegraph.com/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/robert@sourcegraph.com/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/robert@sourcegraph.com/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/robert@sourcegraph.com/google-cloud-sdk/completion.zsh.inc'; fi

# The following lines were added by compinstall
zstyle :compinstall filename '/Users/robert@sourcegraph.com/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
