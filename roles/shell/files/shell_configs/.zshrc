HISTFILE=~/.histfile
HISTSIZE=99999
SAVEHIST=99999
source "${HOME}/.config/zgen/zgen.zsh"
source "${HOME}/.config/scripts/gitprompt.sh"
unsetopt beep

if ! zgen saved; then
	
	zgen oh-my-zsh

	zgen load exitnodeio/baduser-zsh-theme baduser
	zgen load zsh-users/zsh-syntax-highlighting
	zgen load zsh-users/zsh-completions
	zgen load b4b4r07/enhancd

	zgen save
fi
