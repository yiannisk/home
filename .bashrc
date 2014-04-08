# Colors definitions
# Reset
COLOR_OFF='\[\e[0m\]'      # Text Reset

# Regular Colors
BLACK='\[\e[0;30m\]'       # Black
RED='\[\e[0;31m\]'         # Red
GREEN='\[\e[0;32m\]'       # Green
YELLOW='\[\e[0;33m\]'      # Yellow
BLUE='\[\e[0;34m\]'        # Blue
PURPLE='\[\e[0;35m\]'      # Purple
CYAN='\[\e[0;36m\]'        # Cyan
WHITE='\[\e[0;37m\]'       # White

# Bold
BBLACK='\[\e[1;30m\]'      # Black
BRED='\[\e[1;31m\]'        # Red
BGREEN='\[\e[1;32m\]'      # Green
BYELLOW='\[\e[1;33m\]'     # Yellow
BBLUE='\[\e[1;34m\]'       # Blue
BPURPLE='\[\e[1;35m\]'     # Purple
BCYAN='\[\e[1;36m\]'       # Cyan
BWHITE='\[\e[1;37m\]'      # White

# Underline
UBLACK='\[\e[4;30m\]'      # Black
URED='\[\e[4;31m\]'        # Red
UGREEN='\[\e[4;32m\]'      # Green
UYELLOW='\[\e[4;33m\]'     # Yellow
UBLUE='\[\e[4;34m\]'       # Blue
UPURPLE='\[\e[4;35m\]'     # Purple
UCYAN='\[\e[4;36m\]'       # Cyan
UWHITE='\[\e[4;37m\]'      # White

# Background
ON_BLACK='\[\e[40m\]'      # Black
ON_RED='\[\e[41m\]'        # Red
ON_GREEN='\[\e[42m\]'      # Green
ON_YELLOW='\[\e[43m\]'     # Yellow
ON_BLUE='\[\e[44m\]'       # Blue
ON_PURPLE='\[\e[45m\]'     # Purple
ON_CYAN='\[\e[46m\]'       # Cyan
ON_WHITE='\[\e[47m\]'      # White

# High Intensty
IBLACK='\[\e[0;90m\]'      # Black
IRED='\[\e[0;91m\]'        # Red
IGREEN='\[\e[0;92m\]'      # Green
IYELLOW='\[\e[0;93m\]'     # Yellow
IBLUE='\[\e[0;94m\]'       # Blue
IPURPLE='\[\e[0;95m\]'     # Purple
ICYAN='\[\e[0;96m\]'       # Cyan
IWHITE='\[\e[0;97m\]'      # White

# Bold High Intensty
BIBLACK='\[\e[1;90m\]'     # Black
BIRED='\[\e[1;91m\]'       # Red
BIGREEN='\[\e[1;92m\]'     # Green
BIYELLOW='\[\e[1;93m\]'    # Yellow
BIBLUE='\[\e[1;94m\]'      # Blue
BIPURPLE='\[\e[1;95m\]'    # Purple
BICYAN='\[\e[1;96m\]'      # Cyan
BIWhite='\[\e[1;97m\]'     # White

# High Intensty backgrounds
ON_IBLACK='\[\e[0;100m\]'  # Black
ON_IRED='\[\e[0;101m\]'    # Red
ON_IGREEN='\[\e[0;102m\]'  # Green
ON_IYELLOW='\[\e[0;103m\]' # Yellow
ON_IBLUE='\[\e[0;104m\]'   # Blue
ON_IPURPLE='\[\e[10;95m\]' # Purple
ON_ICYAN='\[\e[0;106m\]'   # Cyan
ON_IWHITE='\[\e[0;107m\]'  # White

# Include git bash completion script if __git_ps1 function is not available in the shell
# Normally this will be included in linux git installations but not in MacOSX
[[ `type -t __git_ps1 2>&1` != 'function' ]] && [[ -r $HOME/.git-completion.bash ]] && source $HOME/.git-completion.bash

# Rake completion script
[[ -r $HOME/.rake-completion.bash ]] && source $HOME/.rake-completion.bash

# Vagrant completion script
[[ -r $HOME/.vagrant-completion.bash ]] && source $HOME/.vagrant-completion.bash

# aliases
alias ls='ls -halt --color --time-style=long-iso'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias idea='nohup /opt/idea-IU-133.696/bin/idea.sh &'
alias bdl='bundle'
alias chrome='nohup /opt/google/chrome/google-chrome'
alias hipchat='nohup /opt/HipChat/bin/hipchat &'
alias teamcity='nohup /opt/google/chrome/google-chrome http://teamcity7.pamediakopes.local &'
alias wwwgit='nohup /opt/google/chrome/google-chrome http://git/ &'
alias redmine='nohup /opt/google/chrome/google-chrome http://redmine.hq.e-travel.gr &'
alias google="nohup ~/./google.sh"
alias sgit="nohup ~/./smartgit.sh"
alias vpn-1="sudo openvpn ~/openvpn/awseuwest1b_client_2step.conf"
alias vpn-2="sudo openvpn ~/openvpn/awseuwest2a_client.conf &"
alias wrath="~/wrath.sh"
alias sublime_text="nohup /opt/sublime_text_2.0.2/sublime_text &"
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

export EDITOR='vim'

SSH_ENV="$HOME/.ssh/environment"

# Create a fancy Prompt
export GIT_PS1_SHOWDIRTYSTATE=1

PS1_USER="\u"
PS1_HOST=`hostname -s`
PS1_DIR="\w"
[[ -s $HOME/.rvm/bin/rvm-prompt ]]          && PS1_RVM=" (\$($HOME/.rvm/bin/rvm-prompt i v g))"
[[ `type -t __git_ps1 2>&1` = 'function' ]] && PS1_GIT=" (\$(__git_ps1 %s))"
export PS1="$COLOR_OFF[$PS1_USER@$PS1_HOST $GREEN$PS1_DIR$ON_IPURPLE$PS1_RVM$YELLOW$PS1_GIT$COLOR_OFF] "
unset PS1_USER PS1_HOST PS1_DIR PS1_RVM PS1_GIT

# set the title of the terminal to the folder you are into 
export PROMPT_COMMAND='echo -ne "\033]0;`pwd | xargs basename`\007"'

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:/opt/Sublime\ Text\ 2
PATH=$PATH:/opt/phantomjs-1.9.1
PATH=$PATH:/usr/share/qt4/bin
PATH=$PATH:/usr/local/bin
PATH=$PATH:$JAVA_HOME/bin
PATH=$PATH:/opt/leiningen/bin

export RUBYMINE_HOME="/home/ikaradimas/.IntelliJIdea12/config/plugins/ruby"
export JAVA_HOME="/usr/local/java/jdk1.7.0_45"
