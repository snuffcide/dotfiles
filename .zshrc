
export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:/home/samar/.local/share/flatpak/exports/share${XDG_DATA_DIRS:+:$XDG_DATA_DIRS}"

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt inc_append_history
setopt share_history
setopt hist_ignore_all_dups
setopt hist_reduce_blanks

autoload -Uz colors && colors
autoload -Uz compinit
compinit
setopt correct
zstyle ':completion:*' menu select

bindkey '^[[1;5D' backward-word # C+Left
bindkey '^[[1;5C' forward-word  # C+Right
bindkey '^[[1;6D' backward-word # C+S+Left
bindkey '^[[1;6C' forward-word  # C+S+Right

bindkey '^R' history-incremental-search-backward

PROMPT='%F{color7}%~%f %F{color7}λ%f '

autoload -Uz zsh-syntax-highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
autoload -Uz zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -Uz flatpak.plugin
source ~/.zsh/flatpak.plugin.zsh

alias s='sudo'
alias vim='nvim'

alias mkdir='mkdir -p'
alias ..='cd ..'
alias ...='cd ../..'

alias ls='eza --icons=always'
alias la='eza --icons=always -a'
alias ll='eza --icons=always -la'
alias ld='eza --icons=always -la --group-directories-first'
alias lt='eza --icons=always -aT'

alias perf="sudo cpupower frequency-set -g performance -u \$(cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq)"
alias eco="sudo cpupower frequency-set -g powersave -u 2.5GHz"

r() {
	length=${1:-32}
	head /dev/urandom | tr -dc A-Za-z0-9 | head -c "$length" ; echo ''
}

