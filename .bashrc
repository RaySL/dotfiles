#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Aliases for power management
alias reboot="systemctl reboot"
alias poweroff="systemctl poweroff"


alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


