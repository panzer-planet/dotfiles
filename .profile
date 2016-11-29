# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# For programs that can be run as me
export PATH="~/bin:$PATH"
export EDITOR=nano

# OSX LS Settings
export CLICOLOR=1
export LSCOLORS=BxDxGxFxCxegedabagaced
# The color designators are as follows:

# a black
# b red
# c green
# d brown
# e blue
# f magenta
# g cyan
# h light grey
# A bold black, usually shows up as dark grey
# B bold red
# C bold green
# D bold brown, usually shows up as yellow
# E bold blue
# F bold magenta
# G bold cyan
# H bold light grey; looks like bright white
# x default foreground or background

# Note that the above are standard ANSI colors. The actual
# display may differ depending on the color capabilities of
# the terminal in use.

# The order of the attributes are as follows:

# 1. directory
# 2. symbolic link
# 3. socket
# 4. pipe
# 5. executable
# 6. block special
# 7. character special
# 8. executable with setuid bit set
# 9. executable with setgid bit set
# 10. directory writable to others, with sticky bit
# 11. directory writable to others, without sticky
# bit

# Aliases
alias "mysqldump=/Applications/MySQLWorkbench.app/Contents/MacOS/mysqldump" 
alias nano="/usr/local/Cellar/nano/2.6.1/bin/nano" #homebrew nano
alias mysql="/usr/local/mysql/bin/mysql"
alias ll="ls -la"
alias folders="find . -maxdepth 1 -type d -print | xargs du -sk | sort -rn"
alias grep='grep --color=auto'
# Directory navigation aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias github="cd ~/github"


# Bash History
export HISTCONTROL="erasedups:ignoreboth" # Remove duplicates
export HISTFILESIZE=500000
export HISTSIZE=100000
shopt -s histappend # Don't clear history each time
shopt -s cmdhist
stty stop ""

# ANSI Escaping with tput (The correct way)
red=$(tput setaf 1)
green=$(tput setaf 2)
brown=$(tput setaf 3)
blue=$(tput setaf 4)
purple=$(tput setaf 5)
cyan=$(tput setaf 6)
white=$(tput setaf 7)
bold=$(tput bold)
reset=$(tput sgr0)
# Set Prompt
PS1='\[$reset\]\[$red$bold\]\u\[$reset\]@\h \[$blue$bold\]\w\[$reset\] \$ '


# Misc
export HOMEBREW_GITHUB_API_TOKEN="543ce8f2cffc9f0b15b756a70d05380cbe8517ce"
export ANDROID_HOME="/Users/Werner/Library/Android/sdk/"
export PATH=$PATH:$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:/usr/local/bin:/usr/local/sbin
# Welcome Message
WELCOME_COMMANDER="${brown}${bold}Welcome back ${USER}... ${reset}"
WELCOME_FORTUNE="$green$bold$(fortune)$reset"
echo $WELCOME_COMMANDER
echo -n "Uptime "
uptime | awk -F'( |,|:)+' '{print $4,$5",",$6,"hours,",$7,"minutes."}'
echo $WELCOME_FORTUNE | fold -sw 80


export NVM_DIR="/Users/werner/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"
