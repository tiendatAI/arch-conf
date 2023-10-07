#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

eval "$(zellij setup --generate-auto-start bash)"

if command -v nu &> /dev/null; then 
  exec nu 
fi

# Battery monitor
while true; do
    bat_lvl=$(cat /sys/class/power_supply/BAT1/capacity)
    if [ $bat_lvl -le 15 ]; then
        notify-send --urgency=CRITICAL "Battery Low" "Level: ${bat_lvl}%"
        sleep 1200
    else
        sleep 120
    fi
done
