# Set up the prompt

autoload -Uz promptinit
promptinit
prompt walters

# Use emacs keybindings even if our EDITOR is set to vi
#bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'


# added by Anaconda3 installer
export PATH="/home/hannesj/anaconda3/bin:$PATH"

alias p='python'
alias t2='tree -L 2 --dirsfirst'
alias t3='tree -L 3 --dirsfirst'
alias t4='tree -L 4 --dirsfirst'


# Colors stuff:

#LS_COLORS=$LS_COLORS:'*.java=38;5;074;1:*.js=38;5;074;1:*.h=38;5;110:*.hpp=38;5;110:*.cpp=38;5;81:*.c=38;5;81:*.pyc=38;5;240:*.html=38;5;125;1:*.py=38;5;41:di=34;01:fi=0:ln=96;1:pi=36;1:so=31;1:bd=5:cd=5:or=31:mi=0:ex=35' ; export LS_COLORS

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Setup proxys
export http_proxy=http://wwwproxy.se.axis.com:3128
export https_proxy=http://wwwproxy.se.axis.com:3128

eval $(dircolors -b $HOME/.dircolors)



