export EDITOR=/usr/bin/vim
export PAGER="$HOME/.config/vimpager/vimpager"
export PATH="$PATH:$HOME/.config/scripts"
export ZGEN_DIR="${HOME}/.config/zgen"

umask 077

eval $(ssh-agent -s)
ssh-add -K 
