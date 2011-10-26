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

# OS dependent stuff
case `uname` in
  "Linux" )
    alias ls='ls --color=auto'
    export LS_COLORS='no=00;32:fi=00:di=00;34:ln=01;36:pi=04;33:so=01;35:bd=33;04:cd=33;04:or=31;01:ex=00;32:*.rtf=00;33:*.txt=00;33:*.html=00;33:*.doc=00;33:*.pdf=00;33:*.ps=00;33:*.sit=00;31:*.hqx=00;31:*.bin=00;31:*.tar=00;31:*.tgz=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.zip=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.deb=00;31:*.dmg=00;36:*.jpg=00;35:*.gif=00;35:*.bmp=00;35:*.ppm=00;35:*.tga=00;35:*.xbm=00;35:*.xpm=00;35:*.tif=00;35:*.mpg=00;37:*.avi=00;37:*.gl=00;37:*.dl=00;37:*.mov=00;37:*.mp3=00;35:'
    ;;
  "Darwin" )
    alias ls='ls -G'
    # JAVA home
    export JAVA_HOME=/Library/Java/Home
    # Set greek
    export LC_CTYPE="el_GR.UTF-8"
    # MySQL lib path
    export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/
    ;;
esac

# Include git bash completion script if __git_ps1 function is not available in the shell
# Normally this will be included in linux git installations but not in MacOSX
[[ `type -t __git_ps1 2>&1` != 'function' ]] && [[ -r $HOME/.git-completion.bash ]] && source $HOME/.git-completion.bash

# Rake completion script
 [[ -r $HOME/.rake-completion.bash ]] && source $HOME/.rake-completion.bash

# aliases
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."

# History Controls
shopt -s histappend # append to the history file, don't overwrite it
# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

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

export PS1="$COLOR_OFF[$PS1_USER@$PS1_HOST $GREEN$PS1_DIR$PURPLE$PS1_RVM$RED$PS1_GIT$COLOR_OFF] "
unset PS1_USER PS1_HOST PS1_DIR PS1_RVM PS1_GIT

# set the title of the terminal to the folder you are into 
export PROMPT_COMMAND='echo -ne "\033]0;`pwd | xargs basename`\007"'

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion