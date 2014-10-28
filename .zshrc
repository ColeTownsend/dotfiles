HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
zstyle :compinstall filename '/Users/adam/.zshrc'

autoload -Uz compinit
compinit

# add solarized dircolors
eval `gdircolors ~/.dircolors.solarized-dark-256`

# editor
e() { emacs -nw "${1:-.}"; }

# prompt
autoload -U colors && colors
PROMPT=$'\n%F{red}%B%n%b%f %F{yellow}@%f %B%m%b %F{black_bright}(%0~)%f\n%F{yellow}λ%f ' # TODO: git prompt

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
