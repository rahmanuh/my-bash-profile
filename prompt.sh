#Git prompt setting
source $HOME/.my-bash-profile/git-prompt.sh
GIT_PS1_STATESEPARATOR=" "
GIT_PS1_SHOWUPSTREAM="auto"     # '<' behind, '>' ahead, '<>' diverged, '=' no difference
GIT_PS1_SHOWDIRTYSTATE=1        # staged '+', unstaged '*'
GIT_PS1_SHOWSTASHSTATE=1        # '$' something is stashed
GIT_PS1_SHOWUNTRACKEDFILES=1    # '%' untracked files

# Git completion setting
source $HOME/.my-bash-profile/git-completion.sh

# Colors
RED='[1;31m'
GREEN='[1;32m'
YELLOW='[33m'
BLUE='[1;34m'
PURPLE='[1;35m'
CYAN='[1;36m'
WHITE='[1;37m'
NO_COLOR="\[\033[00m\]"

if [ $(id -u) -eq 0 ];
then # as root
	PS1="\u@\h \w\n# "
else # normal
	PS1='\e${GREEN}\u@\h \e${CYAN}\w \[\033[00m\]$(__git_ps1 "(%s)")\n$ '
fi

