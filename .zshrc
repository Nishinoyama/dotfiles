# zplug plugin manager
if [ -e ~/.zplug ]; then
    source ~/.zplug/init.zsh

    zplug "zsh-users/zsh-history-substring-search"
    bindkey '^[[A' history-substring-search-up
    bindkey '^[[B' history-substring-search-down

    # Then, source plugins and add commands to $PATH
    zplug load #--verbose
    # Install plugins if there are plugins that have not been installed
    if ! zplug check --verbose; then
        printf "Install? [y/N]: "
        if read -q; then
            echo; zplug install
        fi
    fi
fi

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt inc_append_history
setopt share_history

setopt no_beep
#bindkey -v
autoload -Uz compinit
compinit -u

# ls aliases
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'

# enable chromatic terminal
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Japanese man/info alias
alias man='LANG=ja_JP.UTF-8 man'
alias info='LANG=ja_JP.UTF-8 info'

# Prompt (c.f. PS1)
PROMPT='[%F{magenta}%B%n%b%f@%F{blue}%m%u%f:%F{green}%~%f]%# '
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[ %b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT='${vcs_info_msg_0_} '$RPROMPT

# bind key
bindkey "^[[3~" delete-char
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line

setopt HIST_IGNORE_DUPS


