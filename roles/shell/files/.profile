export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/vim

eval $(ssh-agent -s)
ssh-add $HOME/.ssh/id_rsa
ssh-add $HOME/.ssh/pri_rsa

alias ll="ls -al"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ~="cd ~"
alias vi="vim"

paste_text() {
	xclip -o -sel c | xclip -i -sel p;
	echo $1 | xclip -i -sel c;
	xdotool getactivewindow key ctrl+shift+v;
	sleep .01;
	xclip -o -sel p | xclip -i -sel c
}

whatismyip() {
	dig +short myip.opendns.com @resolver1.opendns.com
}
