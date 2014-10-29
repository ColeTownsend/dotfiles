HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
zstyle :compinstall filename '/Users/adam/.zshrc'

autoload -Uz compinit
compinit

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF

setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
setopt complete_aliases

# add solarized dircolors
eval `gdircolors ~/.dircolors.solarized-dark-256`

# prompt
autoload -U colors && colors
autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git
precmd() { vcs_info }
setopt prompt_subst

zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr     '%F{green}$%f '
zstyle ':vcs_info:*' unstagedstr   '%F{yellow}•%f '
zstyle ':vcs_info:*' formats       '%c%u%b%m '
zstyle ':vcs_info:*' actionformats '%c%u%b%m %B%s-%a%%b '
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked git-aheadbehind git-remotebranch

PROMPT=$'\n%F{red}%B%n%b%f %F{yellow}@%f %B%m%b %F{black_bright}(%0~)%f ${vcs_info_msg_0_}\n%F{yellow}λ%f '

# zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

# rbenv shims and completions
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# source
source ~/.exports
source ~/.functions
source ~/.aliases
