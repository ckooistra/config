# Path to your oh-my-zsh installation.
  export ZSH=/home/chris/.oh-my-zsh
  export KEYTIMEOUT=1
  export TERM=screen-256color
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"
# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13
# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"
# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"
# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
# User configuration
emulate sh -c 'source ~/.bashrc'
#[[ -e ~/.profile ]] && emulate sh -c 'source ~/.bashrc'
source $ZSH/oh-my-zsh.sh
# You may need to manually set your language environment
# export LANG=en_US.UTF-8
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
# gpg
GPG_TTY=$(tty)
export GPG_TTY
#killall gpg-agent
#eval $(gpg-agent --daemon --pinentry-program /usr/bin/pinentry-curses)
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# suppress GPG gui
export GPG_TTY=$TTY
function zle-line-init zle-keymap-select {
  zle reset-prompt
}
zle -N zle-keymap-select
stty stop undef # to unmap ctrl-s
bindkey -v
bindkey '<esc>' vi-cmd-mode # <C-k> for going to command mode
bindkey -M vicmd ' ' execute-named-cmd
bindkey '\e[1~' vi-beginning-of-line
bindkey '\eOH' vi-beginning-of-line
bindkey '\e[4~' vi-end-of-line
bindkey '\eOF' vi-end-of-line
bindkey -M viins '^o' vi-backward-kill-word
bindkey -M vicmd 'yy' vi-yank-whole-line
bindkey -M vicmd 'Y' vi-yank-eol
bindkey -M vicmd 'y.' vi-yank-whole-line
bindkey -M vicmd 'c.' vi-change-whole-line
bindkey -M vicmd 'd.' kill-whole-line
bindkey -M vicmd 'u' undo
bindkey -M vicmd 'U' redo
bindkey -M vicmd 'H' run-help
bindkey -M viins '\eh' run-help
bindkey -M vicmd 'k' vi-up-line-or-history
bindkey -M vicmd 'j' vi-down-line-or-history
bindkey '^p' history-substring-search-up
bindkey '^n' history-substring-search-down
bindkey -M vicmd '\-' vi-repeat-find
bindkey -M vicmd '_' vi-rev-repeat-find
bindkey -M viins '\e.' insert-last-word
bindkey -M vicmd '\e.' insert-last-word
bindkey -M viins '^a' beginning-of-line
bindkey -M viins '^e' end-of-line
function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
	RPS2=$RPS1
	zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
DISABLE_AUTO_TITLE=true
export NODE_PATH=:/usr/local/lib/node_modules
