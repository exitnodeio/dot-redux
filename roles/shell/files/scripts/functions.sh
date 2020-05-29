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

ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
