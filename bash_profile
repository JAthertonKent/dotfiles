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

export VCPROMPT_FORMAT=[%n:%b]"%m" vcprompt

alias ls="ls -G"

alias svn_clean="svn st | grep '^?' | awk '{print $2}' | xargs rm -rf"
