#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# bash history size
export HISTSIZE=10000
export HISTFILESIZE=10000

#export XDG_CURRENT_DESKTOP="i3"

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

#screenfetch
neofetch

#echo +++ Fortune Cookie +++
#fortune


alias sudo='sudo '

export PYTHONPATH=/usr/lib/python3.7/site-packages
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh
#. /usr/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh

extract () {
if [ -f $1 ] ; then
  case $1 in
    *.tar.bz2)   tar xjf $1     ;;
    *.tar.gz)    tar xzf $1     ;;
    *.bz2)       bunzip2 $1     ;;
    *.rar)       unrar e $1     ;;
    *.gz)        gunzip $1      ;;
    *.tar)       tar xf $1      ;;
    *.tbz2)      tar xjf $1     ;;
    *.tgz)       tar xzf $1     ;;
    *.zip)       unzip $1       ;;
    *.Z)         uncompress $1  ;;
    *.7z)        7z x $1        ;;
    *)     echo "'$1' cannot be extracted via extract()" ;;
     esac
 else
     echo "'$1' is not a valid file"
 fi
}

# clear dependencies
alias dependencies='sudo pacman -Rsnc $(pacman -Qdtq)'

# Update bash
alias up_bash='. ~/.bashrc'

# Update GRUB
alias up_grub='grub-mkconfig -o /boot/grub/grub.cfg'

# Update pac
alias up_pac='sudo pacman -Syu'

# Update aur
#alias up_aur='trizen -Su --aur'

# up_all 
alias up_aur='trizen -Syu'

# up_all no confirm
alias up_all_n='trizen -Syu --noconfirm'

# update nvidia drivers --noconfirm
alias up_nvidia='trizen -S nvidia-full-beta --noconfirm'

# blank 15 minutes
alias blank15='xset s 900 900 ; xset dpms 900 900 900'

# blank 30 minutes
alias blank30='xset s 1800 1800 ; xset dpms 1800 1800 1800'

# blank 120 minutes
alias blank120='xset s 7200 7200 ; xset dpms 7200 7200 7200'

# edit brightness; max 937
alias brightlvl='vim /sys/class/backlight/intel_backlight/brightness'
alias bright47='echo "47" > /sys/class/backlight/intel_backlight/brightness'
alias bright97='echo "97" > /sys/class/backlight/intel_backlight/brightness'
alias bright197='echo "197" > /sys/class/backlight/intel_backlight/brightness'
alias bright297='echo "297" > /sys/class/backlight/intel_backlight/brightness'
alias bright397='echo "397" > /sys/class/backlight/intel_backlight/brightness'
alias bright497='echo "497" > /sys/class/backlight/intel_backlight/brightness'
alias bright597='echo "597" > /sys/class/backlight/intel_backlight/brightness'
alias bright697='echo "697" > /sys/class/backlight/intel_backlight/brightness'
alias bright797='echo "797" > /sys/class/backlight/intel_backlight/brightness'
alias bright897='echo "897" > /sys/class/backlight/intel_backlight/brightness'

# mount NTFS sda5 -> /root/mnt
alias folding_mnt='sudo ntfs-3g /dev/sda5 /mnt'

# emacs in terminal
alias temacs='emacs -nw'

# emacs terminal todo
alias todo_temacs='emacs -nw todo.org'

# emacs todo
alias todo='emacs todo.org'

# edit ~/.bashrc
alias e_bash='emacs -nw ~/.bashrc'

# i3config
alias i3conf='emacs -nw ~/.config/i3/config'

alias clear_n='clear ; neofetch'

# ncmpcpp player
alias player='ncmpcpp'

# touchpad
alias tpad_off='xinput --set-prop "Elan Touchpad" "Device Enabled" 0'
alias tpd_on='xinput --set-prop "Elan Touchpad" "Device Enabled" 1'

# random_wallpaper_nitrogen
alias random_wall='~/scripts/random_wallp.sh'

# ls -l
alias ll='ls -l'

# go up in directory
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# restart conky
alias conky_restart=". ~/scripts/restart_conky.sh"
