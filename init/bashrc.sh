alias reloadbash='source ~/.bash_profile'

# Colors ----------------------------------------------------------
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1

if [ "$OS" = "linux" ] ; then
  alias ls='ls --color=auto' # For linux, etc
  # ls colors, see: http://www.linux-sxs.org/housekeeping/lscolors.html
  export LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rb=90' #LS_COLORS is not supported by the default ls command in OS-X
else
  alias ls='ls -G' # OS-X SPECIFIC - the -G command in OS-X is for colors, in Linux it's no groups
fi

# Setup some colors to use later in interactive shell or scripts
export COLOR_NC='\033[0m' # No Color
export COLOR_WHITE='\033[1;37m'
export COLOR_BLACK='\033[0;30m'
export COLOR_BLUE='\033[0;34m'
export COLOR_LIGHT_BLUE='\033[1;34m'
export COLOR_GREEN='\033[0;32m'
export COLOR_LIGHT_GREEN='\033[1;32m'
export COLOR_CYAN='\033[0;36m'
export COLOR_LIGHT_CYAN='\033[1;36m'
export COLOR_RED='\033[0;31m'
export COLOR_LIGHT_RED='\033[1;31m'
export COLOR_PURPLE='\033[0;35m'
export COLOR_LIGHT_PURPLE='\033[1;35m'
export COLOR_BROWN='\033[0;33m'
export COLOR_YELLOW='\033[1;33m'
export COLOR_GRAY='\033[1;30m'
export COLOR_LIGHT_GRAY='\033[0;37m'

alias colorslist="set | egrep 'COLOR_\w*'" # lists all the colors

# Prompts ----------------------------------------------------------

prompt_func() {
    previous_return_value=$?;
    prompt="\[\033]0;${USER} ${PWD}\007\]\[${COLOR_GREEN}\]\w\[${COLOR_NC}\] "
    #prompt="\033]0;${PWD}\007\[${COLOR_GREEN}\]\w\[${COLOR_GRAY}\]$(__git_ps1)\[${COLOR_NC}\] "
    #prompt="\[${COLOR_GREEN}\]\w\[${COLOR_GRAY}\]$(__git_ps1)\[${COLOR_YELLOW}\]$(git_dirty_flag)\[${COLOR_NC}\] "

    if test $previous_return_value -eq 0
    then
        PS1="${prompt}> "
    else
        PS1="${prompt}\[${COLOR_RED}\]> \[${COLOR_NC}\]"
    fi
}
PROMPT_COMMAND=prompt_func

# export PS1="\[${COLOR_GREEN}\]\w\[${COLOR_NC}\] > " # Primary prompt with only a path
# export PS1="\[${COLOR_RED}\]\w > \[${COLOR_NC}\]" # Primary prompt with only a path, for root, need condition to use this for root
# export PS1="\[${COLOR_GRAY}\]\u@\h \[${COLOR_GREEN}\]\w > \[${COLOR_NC}\]" # Primary prompt with user, host, and path
# This runs before the prompt and sets the title of the xterm* window. If you set the title in the prompt
# weird wrapping errors occur on some systems, so this method is superior
#export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/} ${USER}@${HOSTNAME%%.*}"; echo -ne "\007"' # user@host path

export PS2='> ' # Secondary prompt
export PS3='#? ' # Prompt 3
export PS4='+' # Prompt 4

function xtitle { # change the title of your xterm* window
  unset PROMPT_COMMAND
  echo -ne "\033]0;$1\007"
}



