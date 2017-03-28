# ***ALIASES***
alias rimraf='rm -rf'
alias ls='ls -aGFh'
alias ll='ls -l'
alias ..='cd ..'
alias ...='cd ../../'
alias mkdir='mkdir -pv'
alias rimraf='rm -rf'
alias ls='ls -aGFh'
alias ll='ls -l'
alias ..='cd ..'
alias ...='cd ../../'
alias mkdir='mkdir -pv'
alias myip='curl ip.appspot.com'
alias cdhome='cd ~'
alias cp='cp -iv'
alias mv='mv -iv'
alias finder='open -a Finder ./'
# if user is not root, pass all commands via sudo #
if [ $UID -ne 0 ]; then
    alias reboot='sudo reboot'
    alias shutdown='sudo shutdown -r now'
fi

#STYLE
function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local RESETCOLOR="\[\e[00m\]"

  export PS1="\n$RED\u $PURPLE@ $GREEN\h:\w $RESETCOLOR$GREENBOLD\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/')\n   $BLUE[\t] → $RESETCOLOR"
  export PS2="$BLUE > $RESETCOLOR"
}

prompt

prompt

# *** PATH ***
