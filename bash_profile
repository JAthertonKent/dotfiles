# Black       0;30     Dark Gray     1;30
# Blue        0;34     Light Blue    1;34
# Green       0;32     Light Green   1;32
# Cyan        0;36     Light Cyan    1;36
# Red         0;31     Light Red     1;31
# Purple      0;35     Light Purple  1;35
# Brown       0;33     Yellow        1;33
# Light Gray  0;37     White         1;37

# \d – Current date
# \t – Current time
# \h – Host name
# \# – Command number
# \u – User name
# \W – Current working directory (ie: Desktop/)
# \w – Current working directory, full path (ie: /Users/Admin/Desktop)

### VCPROMPT ###
# %n  name of the VC system managing the current directory
# %b  current branch name
# %r  current revision
# %u  ? if there are any unknown files
# %m  + if there are any uncommitted changes (added, modified, or removed files)
# %%  a single % character

export TERM="xterm-256color"

export PS1='\[\033[1;33m\][\@][\u@\h:\w]\[\033[0m\]\[\033[0;35m\]$(vcprompt)\[\033[0m\]\n>: '

export SUDO_PS1='\[\033[1;31m\][\@][\u@\h:\w]\[\033[0m\]\n>: '

export VCPROMPT_FORMAT=[%n:%b]"%m"

alias ls="ls -G"
alias ll="ls -lp"

alias mate="open -a /Applications/TextMate.app"
alias idea="open -a /Applications/IntelliJ\ IDEA\ 12\ CE.app/"

sublime() {
    echo $1 | xargs touch; 
    open -a /Applications/Sublime\ Text\ 2.app $1
}

alias svn_clean="svn st | grep '^?' | awk '{print $2}' | xargs rm -rf"
alias kill_java="ps -Af | grep java | grep -v ttys | awk '{print $2}' | xargs kill -9"

export PATH=/usr/local/bin:$PATH:~/.rvm/bin:~/.dotfiles/bin

#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_25.jdk/Contents/Home
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/home

source ~/.dotfiles/gid_profile
