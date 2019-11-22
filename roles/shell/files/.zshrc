# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=99999
SAVEHIST=99999
source ~/.zsh/gitprompt/gitprompt.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
setopt autocd extendedglob
unsetopt beep

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

autoload -Uz compinit colors
compinit
colors

# End of lines added by compinstall

PROMPT='%B%K{004} %n@%m %F{004}%K{237}%f %b$(dirs | sed "s/\//  /g") $(git_super_status)%(?.$fg[green]$reset_color%B$bg[green] %# $reset_color$fg[green]$reset_color .$fg[red]$reset_color%B$bg[red] %# [%?] $reset_color$fg[red]%b$reset_color '
