# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gnzh"

# Aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gds="git diff --staged"
alias ta="tig --all"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#
# Note that history-substring-search is the last plugin loaded, since otherwise
# it tends to break easily
plugins=(docker-compose git kubectl tmux vi-mode zsh-autosuggestions zsh-syntax-highlighting history-substring-search)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export EDITOR=vim

# Make home binaries available
export PATH="$HOME/local/bin:$PATH"

# Add rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - --no-rehash)"

# Add the Android Development Tools to the path if they are available
ANDROID_SDK_PATH=$HOME/local/android
[[ -d $ANDROID_SDK_PATH ]] && export PATH="$ANDROID_SDK_PATH/platform-tools:$ANDROID_SDK_PATH/tools:$ANDROID_SDK_PATH/tools/bin:$PATH"

# Initialize tmuxinator if available
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# Force n to install node versions into the home directory
export N_PREFIX=~/local

# Configure fzf if installed and instruct it to use the_silver_searcher
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if (command -v fzf >/dev/null 2>&1 && command -v ag >/dev/null 2>&1); then
  export FZF_DEFAULT_COMMAND='ag --nocolor --ignore node_modules -g ""'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_DEFAULT_OPTS='
    --color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108
    --color info:108,prompt:109,spinner:108,pointer:168,marker:168
  '
fi
